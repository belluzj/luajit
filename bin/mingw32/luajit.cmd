@echo off
rem luajit wrapper that loads C libs from this dir and Lua libs from 2 dirs above.
rem platform-specific Lua libs are loaded with priority from this dir.

set bindir=%~dp0
set luadir=%bindir%..\..
set platform_dir=%bindir%
set LUA_CPATH=%bindir%?.dll
set LUA_PATH=?.lua;%platform_dir%?.lua;%luadir%\?.lua;%luadir%?\init.lua
call %bindir%luajit-bin.exe %*
