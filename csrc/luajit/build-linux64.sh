set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
#git checkout -b build v2.0.3
cd src
bindir=../../../../bin/linux64
make clean
cp -f jit/*.lua "$bindir/../../jit/"
make LDFLAGS="-s -static-libgcc"
cp -f luajit "$bindir/luajit-bin"
cp -f libluajit.so "$bindir/"
cp -f jit/vmdef.lua "$bindir/lua/jit/vmdef.lua"

make clean

cd ../..
#rm -rf luajit-2.0
