---
layout: page
title: "Compiling from source (Linux)"
categories: documentation
---

## Installing dependencies
The external dependencies of chigraph are:
- A compiler supporting C++14 (clang 3.7+, gcc 4.8+)
- git (to clone chigraph)
- CMake 3.0+
- LLVM 3.5+
- Boost*
- libgit2*

\*: These dependencies are optional and will be compiled with chigraph by default. Pass to cmake `-DCG_USE_SYSTEM_BOOST=ON` or `-DCG_USE_SYSTEM_LIBGIT2=ON` to request CMake to find them.

### Ubuntu/Mint (Xenial or newer):
```bash
sudo apt-get update
sudo apt-get install git llvm-dev clang cmake
```

If your version doesn't supply new enough llvm versions, use [LLVM's ppa](https://apt.llvm.org)
### Arch Linux
I personally use Arch for most of chigraph's development, so this is pretty guaranteed to work:
```bash
sudo pacman -Sy
sudo pacman -S llvm cmake git
```

### OpenSUSE
```bash
sudo zypper install llvm-devel clang git cmake
```

## Compiling Chigraph
In order to compile chigraph, first generate the project files with cmake:
```bash
git clone https://github.com/chigraph/chigraph
mkdir chigraph/build
cd chigraph/build
cmake .. -DCMAKE_BUILD_TYPE=<Release|Debug> \
	-G<Your generator> \
	-DCMAKE_PREFIX_PATH=<Qt install prefix if nonstandard> \
	-DLLVM_CONFIG=<path to llvm-config of the llvm version you want to use> \
	[ -DCG_USE_SYSTEM_BOOST=ON ] \
	[ -DCG_USE_SYSTEM_LIBGIT2=ON ]
```

See [the documentation](/documentation/cmake-flags/) for a full list of options.

Some example CMake calls:

Debug with all default locations (works on arch, ubuntu yakkety or xenial):
```bash
cmake .. -DCMAKE_BUILD_TYPE=Debug
```
Debug using the LLVM PPAs:
```bash
cmake .. -DCMAKE_BUILD_TYPE=Debug \
	-DLLVM_CONFIG=/usr/lib/llvm-3.9/bin/llvm-config \
```


Then, you can compile it!
```
cmake --build .
```

To test that everything is sane and working, it's a good idea to quickly run the tests (it only takes a few seconds)
```bash
cmake --build . --target test
```

Any errors? [File an issue!](https://github.com/chigraph/chigraph/issues/new)
