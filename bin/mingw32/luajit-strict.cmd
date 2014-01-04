@echo off
rem luajit wrapper that loads C libs from ./ and Lua libs from ../..
rem platform-specific Lua libs are loaded with priority from ./lua

set bindir=%~dp0
set luadir=%bindir%..\..
set platform_dir=%bindir%\lua
set LUA_CPATH=%bindir%?.dll
set LUA_PATH=?.lua;%platform_dir%?.lua;%luadir%\?.lua;%luadir%?\init.lua
call %bindir%luajit-bin.exe %*
