#!/bin/sh
pwd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
