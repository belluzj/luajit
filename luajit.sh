#!/bin/sh
# execute luajit from this directory on any platform.
[ "$OSTYPE" = "msys" ] && luajit=bin/mingw32/luajit || luajit=bin/linux32/luajit-strict
cd "$(dirname "$0")" && exec $luajit "$@"
