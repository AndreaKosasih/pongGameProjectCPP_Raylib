cmake_minimum_required(VERSION 3.0)

project(MyRaylibGame)

set(CMAKE_CXX_STANDARD 11)

find_package(raylib REQUIRED)

add_executable(MyRaylibGame main.cpp)

target_link_libraries(MyRaylibGame PRIVATE raylib)
