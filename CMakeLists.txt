cmake_minimum_required(VERSION 3.25)

project(genpass
   LANGUAGES C)

set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)
set (CMAKE_C_FLAGS "-Wall -O3")

set(SOURCE genpass.c)

add_executable(${PROJECT_NAME} ${SOURCE})
install(TARGETS genpass)
