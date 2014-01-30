# TODO: use `make amalg PREFIX=` and `make install DESTDIR=`
set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
#git checkout -b build v2.0.2
cd src
make clean
make

bindir=../../../../bin/linux64
platform_dir="$bindir/lua"
cp -f luajit "$bindir/luajit-bin"
mkdir -p "$platform_dir/jit"
cp -Rf jit/*.lua "$platform_dir/jit/"

make clean

cd ../..
#rm -rf luajit-2.0
