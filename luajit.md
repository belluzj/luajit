---
project: luajit
tagline: LuaJIT binary
---

## Overview

LuaJIT binary.

## Build Notes

Makefile was modified to build with `-msse -msse2` (not enabled by default).

## MODULE PATHS

### On Windows

`!\..\..\?.lua;!\..\..\?\init.lua` was added to the default package.path in luaconf.h.
This allows `require` to find modules relative to the executable regardless of what the current directory is,
making the distribution portable.

The default `package.cpath` was also modified from `!\?.dll` to `!\clib\?.dll`.
This allows distinguishing between Lua/C modules and other dll dependencies.

> Windows looks for dependent dlls in the directory of the executable first, and that's where all
non-module dlls are, so independence from system libraries is assured by design.

### On Linux

In Linux, luajit is a shell wrapper script that sets LD_LIBRARY_PATH, LUA_PATH and LUA_CPATH to acheive
the same effect and assure independence from system libraries.

### On OSX

In OSX, luajit is a shell wrapper script that sets DYLD_LIBRARY_PATH, DYLD_FALLBACK_LIBRARY_PATH,
LUA_PATH and LUA_CPATH to acheive the same effect and assure independence from system libraries.

### Going further

The above only solves the problem of finding luapower modules. To find other files,
like media files, etc. relative to the directory of the running script, use [glue.bin].

To add more paths to package.path and package.cpath at runtime, use [glue.luapath] and [glue.cpath].


[glue.bin]:     glue.html#bin
[glue.luapath]: glue.html#luapath
[glue.cpath]:   glue.html#cpath

