gcc | grep 4.8 && { echo "LuaJIT 2.0.2 is not working with MinGW's gcc 4.8 (use 4.7 or lower)."; exit 1; }
set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
#git checkout -b build v2.0.2
cd src
mingw32-make clean
mingw32-make LDFLAGS=-static-libgcc

bindir=../../../../bin/mingw32
platform_dir="$bindir"
upx lua51.dll
upx luajit.exe
cp -f lua51.dll "$bindir/"
cp -f luajit.exe "$bindir/luajit-bin.exe"
cp -Rf jit "$platform_dir"

make clean

cd ../..
#rm -rf luajit-2.0
