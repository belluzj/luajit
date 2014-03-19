@echo off
pushd "%~dp0"
call bin\mingw32\luajit %*
popd
