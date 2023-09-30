#include <iostream>
#include <raylib.h>

#define SCREEN_WIDHT 1280
#define SCREEN_HEIGHT 800
#define FPS 60

Color Green = Color{38, 185, 154, 255};
Color Dark_Green = Color{20, 160, 133, 255};
Color Light_Green = Color{129, 204, 184, 255};
Color Yellow = Color{243, 213, 91, 255};

int player_score = 0;
int cpu_score = 0;

class Ball {
    public:
    float x, y;
    int speed_x, speed_y, radius;

    void Draw () {
        DrawCircle(x, y, radius, Yellow);
    }

    void Update () {
        x += speed_x;
        y += speed_y;

        if(y + radius >= SCREEN_HEIGHT || y - radius <= 0) { //GetScreenHeight()
            speed_y *= -1; 
        }

        if(x + radius >= SCREEN_WIDHT) { //GetScreenWidth() //cpu win
            cpu_score++; 
            ResetBall();
        }

        if(x - radius <= 0) { //player wins
            player_score++;
            ResetBall();
        }
    }

    void ResetBall () {
        x = SCREEN_WIDHT/2;
        y = SCREEN_HEIGHT/2;
        
        int speed_choices[2] = {-1,1};
        speed_x *= speed_choices[GetRandomValue(0,1)];
        speed_y *= speed_choices[GetRandomValue(0,1)];
    }
};

class Paddle {
    protected:

    void LimitMovement () {
        if(y <= 0) {
            y = 0;
        } 
        if(y + height >= SCREEN_HEIGHT) {
            y = SCREEN_HEIGHT - height;
        }
    }

    public:
    float x, y;
    float width, height;
    int speed_y;

    void Draw () {
        DrawRectangleRounded(Rectangle{x, y, width, height}, 0.8, 0, WHITE);
    }

    void Update () {
        if(IsKeyDown(KEY_UP)) {
            y -= speed_y;
        }
        if(IsKeyDown(KEY_DOWN)) {
            y += speed_y;
        }
        LimitMovement();
    }
};

class CpuPaddle: public Paddle {
    public:

    void Update (int ball_y) {
        if (y + height/2 > ball_y) {
            y -= speed_y;
        }
        if (y + height/2 <= ball_y) {
            y += speed_y;
        }
        LimitMovement();
    }
};

Ball ball;
Paddle player;
CpuPaddle cpu; 

int main () {
    std::cout << "Starting the game" << std::endl; 
    InitWindow(SCREEN_WIDHT, SCREEN_HEIGHT, "RETRO PONG GAME");
    SetTargetFPS(FPS);

    ball.x = SCREEN_WIDHT/2;
    ball.y = SCREEN_HEIGHT/2;
    ball.radius = 20;
    ball.speed_x = 7;
    ball.speed_y = 7;
    
    player.width = 25;
    player.height = 120;
    player.x = SCREEN_WIDHT - player.width - 10;
    player.y = SCREEN_HEIGHT/2 - player.height/2;
    player.speed_y = 6;

    cpu.width = 25;
    cpu.height = 120; 
    cpu.x = 10;
    cpu.y = SCREEN_HEIGHT/2 - cpu.height;
    cpu.speed_y = 6; 


    while(WindowShouldClose() == false) {
        BeginDrawing();

        //UPDATING OBJECT
        ball.Update();
        player.Update();
        cpu.Update(ball.y);

        //CHECKING FOR COLLISIONS
        if(CheckCollisionCircleRec(Vector2{ball.x, ball.y}, ball.radius, Rectangle{player.x, player.y, player.width, player.height})) {
            ball.speed_x *= -1;
        }

        if(CheckCollisionCircleRec(Vector2{ball.x, ball.y}, ball.radius, Rectangle{cpu.x, cpu.y, cpu.width, cpu.height})) {
            ball.speed_x *= -1;
        }

        //DRAWING OBJECT
        ClearBackground(Dark_Green);
        DrawRectangle(SCREEN_WIDHT/2, 0, SCREEN_WIDHT/2, SCREEN_HEIGHT, Green);
        DrawCircle(SCREEN_WIDHT/2, SCREEN_HEIGHT/2, 150, Light_Green);
        DrawLine(SCREEN_WIDHT/2, 0, SCREEN_WIDHT/2, SCREEN_HEIGHT, WHITE);
        ball.Draw();
        cpu.Draw();
        player.Draw();
        DrawText(TextFormat("%i", cpu_score), SCREEN_WIDHT/4 - 20, 20, 80, WHITE);
        DrawText(TextFormat("%i", player_score), 3*SCREEN_WIDHT/4 - 20, 20, 80, WHITE);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}