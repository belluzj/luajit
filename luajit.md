---
project: luajit
tagline: LuaJIT binary
---

Makefile was modified to build with `-msse -msse2` (not enabled by default).

For Windows, LUA_PATH and LUA_CPATH were changed from the default:

`..\..\?.lua;..\..\?\init.lua` was added to LUA_PATH in luaconf.h.
This allows require(<any-luapower-module>) regardless of what the current directory is.
This only solves the problem of finding luapower modules independent of current directory.
To find your app modules too independent of current directory you could use lua-find-bin
and lua-lib from github.com/davidm (put them into the luapower directory to avoid
the obvious chicken/egg problem).

LUA_CPATH was also modified from `!\?.dll` to `!\clib\?.dll` (this is to allow luapower.lua
to find C Lua modules separate from other dll files that are not C Lua modules).
