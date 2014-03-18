@echo off
rem luajit wrapper that starts luajit in this directory so that scripts can access
rem their files using relative paths.
rem also, it runs the 64bit version of luajit on a 64bit Windows.
pushd "%~dp0"
if %PROCESSOR_ARCHITECTURE% == AMD64 (
	call bin\mingw64\luajit %*
) else (
	call bin\mingw32\luajit %*
)
popd
