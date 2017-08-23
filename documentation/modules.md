---
layout: page
title: "Modules"
categories: documentation
---

A module, at the most basic level, is a collection of functions and structures. 

## Main Modules
Modules who have the name `*/main` (no matter what comes before it, so `addint/main` as well as  just `main` both qualify) are main modules. This means they can be executed if you add a `main` function to them. 

If you're familiar with other programming languages, it's like having a `main` module in golang or (roughly) a `.cpp` file with a `main` method in C++ (or `.c` in C).

## Libraries

Libraries are disbributed in the foramt of a `<library-name>.chimod` file, including the standard library. The standard library (which is in active development), is under the `std/` directory in the src tree of your workspace. 


