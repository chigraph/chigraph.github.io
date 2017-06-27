---
layout: page
title: "Compiling from source (macOS)"
categories: documentation
---

## Known problems:
Brew currently doesn't package lldb because it requires code signing. Either compile LLVM with lldb yourself or don't build it with debugging support by passing `-DCG_BUILD_DEBUGGER=OFF`.

## Installing dependencies

### Xcode
Xcode must be installed. You can install it from the app store. Versions 7.3+ are tested.

### Brew

[install brew](http://brew.sh) if you haven't already.

Then, it's as easy as:
```bash
brew install cmake llvm
```

## Compiling chigraph

Clone chigraph...
```bash
git clone https://github.com/chigraph/chigraph
cd chigraph
```

Then configure and install it:
```bash
mkdir build && cd build
cmake .. \
    -DCMAKE_PREFIX_PATH='/usr/local/opt/qt5/;/usr/local/opt/gettext' \
    -DCMAKE_BUILD_TYPE=Debug \
    -DLLVM_CONFIG=/usr/local/opt/llvm/bin/llvm-config \
    -DCG_BUILD_DEBUGGER=OFF
make
```

See [the documentation](/documentation/cmake-flags/) for a full list of CMake options.


Any errors? [File an issue!](https://github.com/chigraph/chigraph/issues/new)
