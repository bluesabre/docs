#!/bin/bash

mkdir -p build/ &&
git clone https://gitlab.xfce.org/apps/parole.git build/parole &&
cd build/parole &&
./autogen.sh --enable-gtk-doc &&
make &&
cd ../../ &&
rm -rf parole &&
cp -r build/parole/docs/plugin-api/html parole &&
rm -rf build/parole
