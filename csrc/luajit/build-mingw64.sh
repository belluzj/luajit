set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
#git checkout -b build v2.0.3
cd src
bindir=../../../../bin/mingw64
make clean
cp -f jit/*.lua "$bindir/../../jit/"
mingw32-make LDFLAGS="-static-libgcc"
cp -f luajit.exe "$bindir/luajit.exe"
cp -f lua51.dll "$bindir/"
cp -f jit/vmdef.lua "$bindir/lua/jit/vmdef.lua"

make clean

cd ../..
#rm -rf luajit-2.0
