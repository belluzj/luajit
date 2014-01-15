@echo off
rem execute luajit from this directory so that media files are found using relative paths.
pushd %~dp0
bin\mingw32\luajit %*
popd
