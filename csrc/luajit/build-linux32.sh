set -e
#git clone http://luajit.org/git/luajit-2.0.git src
cd src
make
cd src

bindir=../../../../bin/linux32
platform_dir="$bindir/lua"
cp -f luajit "$bindir/luajit"
mkdir -p "$platform_dir/jit"
cp -Rf jit/*.lua "$platform_dir/jit/"

make clean

cd ../..
#rm -rf luajit-2.0
