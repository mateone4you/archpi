#!/bin/sh
tar -xf dwm-6.1.tar.bz2
cd dwm-6.1
#cp ../config.h config.h &&
patch -p1 < ../patches/dwm-fancybar-6.1.diff &&
patch -p1 < ../patches/dwm-6.1-systray.diff &&
patch -p1 < ../patches/dwm-autostart-20161205-bb3bd6f.diff &&
patch -p1 < ../patches/dwm-activetagindicatorbar-6.1.diff &&
make &&
sudo make install &&
make clean