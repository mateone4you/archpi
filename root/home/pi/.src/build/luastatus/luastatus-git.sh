#!/bin/sh

# luastatus is a universal status bar content generator
# depends=('lua' 'libx11' 'bash' 'alsa-lib' 'yajl>=2.1.0' 'xcb-util-wm' 'xcb-util' 'python-docutils')
# sudo pacman -S cmake lua libx11 bash alsa-lib yajl xcb-util-wm xcb-util python-docutils

git clone https://github.com/shdown/luastatus.git &&
cd ./luastatus &&
cmake . && make && sudo make install
make clean
