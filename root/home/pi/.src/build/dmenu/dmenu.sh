#!/bin/sh
tar -xf dmenu-4.9.tar.gz
cd dmenu-4.9
#cp ../config.h config.h &&
#patch -p1 < ../patches/ &&
make &&
sudo make install &&
make clean