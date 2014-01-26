@rem luajit wrapper that starts luajit in this directory so that scripts can access their files using relative paths.
@pushd "%~dp0"
@call bin\mingw32\luajit %*
@popd
