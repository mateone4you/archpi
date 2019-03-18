#!/bin/sh
git clone https://git.suckless.org/st
cd st
patch -p1 < ../patches/st-alpha-0.8.2.diff &&
patch -p1 < ../patches/st-anysize-0.8.1.diff &&
patch -p1 < ../patches/st-clipboard-0.8.2.diff &&
cp ../config*.h config.h &&
make &&
sudo make install
make clean
