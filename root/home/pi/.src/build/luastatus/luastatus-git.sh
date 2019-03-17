#!/bin/sh

# luastatus is a universal status bar content generator
# depends=('lua' 'libx11' 'bash' 'alsa-lib' 'yajl>=2.1.0' 'xcb-util-wm')
# sudo pacman -S lua libx11 bash alsa-lib yajl xcb-util-wm

git clone https://github.com/shdown/luastatus.git &&
cd ./luastatus &&
cmake . && make && sudo make install