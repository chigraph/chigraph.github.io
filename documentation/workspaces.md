---
layout: page
title: "Workspaces"
categories: documentation
---

Chigraph code is organized into what's called a "workspace". If you've ever written anything in [golang](https://golang.org/), it's similar (actually inspired by that). 

The purpose of a workspace is to hold a hiearchy of [modules](/documentation/modules) to be used to compile chigraph programs. Your workspace should contain all chigraph modules that are dependencies for what you are building. 

## Basic structure

This is a small sample of the test workspace (located in [`test/codegen/workspace`](https://github.com/chigraph/chigraph/tree/master/test/codegen/workspace))
```bash
.
├── .chigraphworkspace # empty file denoting the root of the workspace
├── lib # holds cached compiled .bc files for your modules
└── src # holds chigraph modules
    ├── addint # folder containing modules for easier organization
    │   └── main.chimod # a main module, meaning an executable
    ├── intermodule
    │   ├── main.chimod
    │   └── printer.chimod # a library module
    └── intprinter.chimod # another library module
```

Modules are named by the path to their `.chimod` file from the `src` folder. For example, the `printer.chimod` file would have the name of `intermodule/printer`, and the `intpritner.chimod` module would have the name `intprinter`. This is what you would enter as a dependency. 


