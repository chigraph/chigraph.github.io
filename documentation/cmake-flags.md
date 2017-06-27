---
layout: page
title: "Chigraph CMake options"
categories: documentation
---

[CMake](https://cmake.org) is the meta-build-system used to compile chigraph.
It generates files for another build system (GNU Makefiles, Visual Studio, Ninja, etc) that are used to compile your project.

There are some notable flags you can pass to it to configure how chigraph is compiled.

## Basic CMake usage
You usually want to run CMake in a separate directory from the chigraph source directory to make it impossible to check in build files.
The `build` subdirectory is a common choice, and is already in the `.gitignore` file.

### CMake generators
Because CMake can target many different build systems, you have to tell it which to target.
On linux and macOS, this is usually `Unix Makefiles` or [`Ninja`](https://ninja-build.org/).
On windows, it's usually a Visual Studio generator. You sepcify the generator using the `-G` flag on the cmake commandline, or
if you're using the GUI then it will ask.

### CMake varaibles
You can specify variables to pass to the CMake script with the `-D` flag, which is how compile options are set.

**Usage:**
```bash
cmake .. -G<Generator> [ -D<Variable name>=<Variable value> ]
```

## Important generic CMake flags
Flags that aren't specific to chigraph but important nonetheless.

* `CMAKE_BUILD_TYPE`: Set this to `Debug` or `Release` to build in a deubg or release configuration.
* `CMAKE_CXX_FLAGS`: Extra flags to pass to the C++ compiler. Useful for passing sanitizers like `-fsanitize=address`.
* `CMAKE_INSTALL_PREFIX`: Where to install chigraph to
* `CMAKE_PREFIX_PATH`: Paths to find packages outside of the normal search paths.
* `LLVM_CONFIG`: Path to the `llvm-config` executable.

## Chigraph specific flags
Flags that are specifc to chigraph. All have

* `CG_BUILD_TESTS`: Set to `OFF` if you don't want the tests built. Defaults to `ON`.
* `CG_BUILD_EXAMPLES`: Set to `ON` if you want the examples to be built. Defaults to `OFF`.
* `CG_BUILD_DEBUGGER`: Set to `OFF` if you don't want the debugger to be built with chigraph. Useful when your LLVM install doesn't include LLDB. Defaults to `ON`.
* `CG_USE_SYSTEM_LIBGIT2`: Set to `ON` if you want CMake to find a system libgit2 instead of the prepackaged one. Defaults to `OFF`.
* `CG_USE_SYSTEM_BOOST`: Set to `ON` if you want CMake to find the system boost install instead of the prepackaged install. Defaults to `OFF`.
