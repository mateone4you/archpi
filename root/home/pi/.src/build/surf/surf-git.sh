#!/bin/sh
git clone git://git.suckless.org/surf
cd surf
cp ../config.h config.h &&
make &&
sudo make install
make clean
