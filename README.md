# go2c
Convert Go programs to C programs!

# Requirements
- Clang
- CMake (and make)
- Git
- Go

This project will automatically install `go2cpp` and `llvm-bce`, assuming these are installed.

# How to use
First, clone the repository.
```sh
git clone https://github.com/Nv7-Github/go2c
```

Then, run `install.sh` to install `llvm-cbe` and `go2cpp`. This requires a C++ compiler installed, but this project needs `clang` for LLVM support.

So, do 
```sh
./install.sh
```

Finally, you can use it. This currently converts a file called `main.go` to `main.c`. This might be updated in the future, however right now you need to add code to a file called `main.go`, and then run
```sh
./convert.sh
```
To convert it.

Now, you have a file called `main.c`!

# How it works
This is completely built off of other projects - [go2cpp](https://github.com/xyproto/go2cpp), [llvm-bce](https://github.com/JuliaComputing/llvm-cbe), and the LLVM foundation.

Here is how it works:
1. Convert Go code to C++ code, using `go2cpp`.
2. Convert C++ code to LLVM code, using `clang`.
3. Convert LLVM code to C code, using `llvm-bce`.
