cmake_minimum_required(VERSION 3.16)
project(cpptest2)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_EXE_CPP_FLAGS "${CMAKE_EXE_CPP_FLAGS} -Os")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

add_executable(cpptest2 main.cpp)
