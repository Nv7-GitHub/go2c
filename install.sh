#!/bin/bash

echo "Installing go2cpp"
go install github.com/xyproto/go2cpp@latest

echo "Compiling llvm-cbe"
git clone https://github.com/JuliaComputing/llvm-cbe
cd llvm-cbe && mkdir build && cd build
cmake -S ..
make llvm-cbe

echo "Cleaning up..."
cp tools/llvm-cbe/llvm-cbe ../../llcbe
cd ../..
rm -rf llvm-cbe
mv llcbe llvm-cbe