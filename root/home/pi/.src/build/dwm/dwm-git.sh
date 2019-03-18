#!/bin/sh
git clone git://git.suckless.org/dwm
cd dwm
#cp ../config.h config.h &&
#patch -p1 < ../patches/dwm-systray-20180314-3bd8466.diff &&
patch -p1 < ../patches/dwm-autostart-20161205-bb3bd6f.diff &&
make &&
sudo make install &&
make clean