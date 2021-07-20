#!/bin/bash

# Converts main.go to main.c

# Convert to C++
echo "Converting to C++"
go2cpp main.go > main.cpp

# Convert C++ to LLVM
echo "Converting to LLVM"
clang -S main.cpp -o main.ll -emit-llvm
rm main.cpp

# Convert LLVM to C
echo "Converting to C"
./llvm-cbe main.ll -o main.c
rm main.ll