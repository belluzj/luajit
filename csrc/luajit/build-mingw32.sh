set -e
git clone http://luajit.org/git/luajit-2.0.git
cd luajit-2.0/src
mingw32-make LDFLAGS=-static-libgcc

bindir=../../../../bin/mingw32
platform_dir="$bindir"
upx lua51.dll
upx luajit.exe
cp -f lua51.dll "$bindir/"
cp -f luajit.exe "$bindir/luajit-bin.exe"
cp -Rf jit "$platform_dir"

cd ../..
rm -rf luajit-2.0
