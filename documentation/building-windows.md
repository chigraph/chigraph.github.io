---
layout: page
title: "Compiling from source (Windows)"
categories: documentation
---

## Installing dependencies

First, Install [Visual Studio 2015](https://www.visualstudio.com/downloads/). 2015 is the only version that has been tested, 2013 won't work (not new enough compiler) and I've been having troubles compiling LLVM with 2017.

![Visual Studio custom install](/assets/vscustom.png)

and pick Visual C++ and git:

![Visual C++](/assets/vc++.png)

Install [CMake](https://cmake.org/download/). I suggest you use an installer, it's harder to screw up. Make sure to get a stable release because those are better tested (they usually put the release candidates on top). Make sure to add cmake to path for either all users or just the current one:

![cmake path](/assets/cmakepath.png)

OR

![cmake path](/assets/cmakepathcurrentuser.png)

Then, download LLVM from the [chigraph releases page](https://github.com/chigraph/chigraph/releases/tag/dependencies) and extract it. Choose either debug or release, and take note for later.

Finally, open up the CMake gui and point it to the source directory and a separate build directory. Create an entry for `LLVM_CONFIG` that points to the `llvm-config.exe` in the LLVM you downloaded.

See [the documentation](/documentation/cmake-flags/) for a full list of options.

Configure, generate, and open the project file!

Any errors? [File an issue!](https://github.com/chigraph/chigraph/issues/new)
