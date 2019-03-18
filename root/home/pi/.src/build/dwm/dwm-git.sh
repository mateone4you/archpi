#!/bin/sh
git clone git://git.suckless.org/dwm
cd dwm
patch -p1 < ../patches/dwm-systray-20180314-3bd8466.diff &&
patch -p1 < ../patches/dwm-autostart-20161205-bb3bd6f.diff &&
cp ../config-6.2.h config.h &&
make &&
sudo make install &&
make clean
