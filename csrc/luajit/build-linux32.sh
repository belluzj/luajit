# TODO: use `make amalg PREFIX=` and `make install DESTDIR=`
set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
#git checkout -b build v2.0.2
cd src
make clean
make CCOPT_x86="-march=i686 -msse -msse2" LDFLAGS="-s -static-libgcc"

bindir=../../../../bin/linux32
platform_dir="$bindir/lua"
cp -f luajit "$bindir/luajit-bin"
cp -f libluajit.so "$bindir/"
rm -Rf "$platform_dir/jit/"
cp -Rf jit "$platform_dir/"

make clean

cd ../..
#rm -rf luajit-2.0
