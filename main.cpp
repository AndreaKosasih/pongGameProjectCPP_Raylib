#include <iostream>
#include <raylib.h>

#define SCREEN_WIDHT 1280
#define SCREEM_HEIGHT 800

using namespace std;

int main () {
    cout << "Starting the game" << endl; 
    InitWindow(SCREEN_WIDHT, SCREEM_HEIGHT, "MY PONG GAME");

    CloseWindow();
    return 0;
}