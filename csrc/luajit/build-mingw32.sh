# NOTE: LuaJIT 2.0.2 is not working with newer MinGW (GCC 4.8) due to a globing bug (see luajit list).
set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
#git checkout -b build v2.0.2
cd src
make clean
mingw32-make LDFLAGS=-static-libgcc

bindir=../../../../bin/mingw32
platform_dir="$bindir/lua"
cp -f lua51.dll "$bindir/"
cp -f luajit.exe "$bindir/luajit.exe"
mkdir -p "$platform_dir/jit"
cp -Rf jit/*.lua "$platform_dir/jit/"

make clean

cd ../..
#rm -rf luajit-2.0
