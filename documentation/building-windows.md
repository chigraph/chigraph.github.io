---
layout: page
title: "Compiling from source (Windows)"
categories: documentation
---

## Dependencies

The dependencies for chigraph on windows are as follows:

* Visual Studio 2015 (2017 may work, not tested yet)
* [CMake](https://cmake.org) 3.0+ (3.1 suggested)
* LLVM 3.5+ (4.0 suggested). This pretty much needs to be compiled manually, you need development libraries. You can also use [prepackaged LLVM builds](https://github.com/chigraph/chigraph/releases/tag/dependencies)
* \*Boost
* \*libgit2

\*: These dependencies are packaged with chigraph by default. Use `-DCG_USE_SYSTEM_BOOST=ON` or `-DCG_USE_SYSTEM_LIBGIT2=ON` to use a system version.

## Configuring using CMake
You can either use the CMake commandline or the cmake-gui, the interface to CMake.
