set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
make
cd src

bindir=../../../../bin/linux32
platform_dir="$bindir"
cp -f luajit "$bindir/luajit-bin"
cp -Rf jit "$platform_dir"

make clean

cd ../..
#rm -rf luajit-2.0
