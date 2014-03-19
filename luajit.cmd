@echo off
rem luajit wrapper that runs the 32bit luajit on 32bit windows
rem and the 64bit luajit on 64bit windows.
if %PROCESSOR_ARCHITECTURE% == AMD64 (
	call bin\mingw64\luajit %*
) else (
	call bin\mingw32\luajit %*
)
