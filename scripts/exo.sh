#!/bin/bash

mkdir -p build/ &&
git clone https://gitlab.xfce.org/xfce/exo.git build/exo &&
cd build/exo &&
./autogen.sh --enable-gtk-doc &&
make &&
cd ../../ &&
rm -rf exo &&
cp -r build/exo/docs/reference/html exo &&
rm -rf build/exo
