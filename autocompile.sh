#!/bin/bash
if [ -f /usr/bin/cmake ]; then
echo Running CMake
cmake ./
else
echo You need install CMake
echo Example: sudo apt install cmake
fi
if [ -f /usr/bin/make ]; then
echo Running Makefile
make
else
echo You need to install Make
echo Example: sudo apt install make
fi
