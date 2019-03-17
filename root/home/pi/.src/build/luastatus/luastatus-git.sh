#!/bin/sh
git clone https://github.com/shdown/luastatus.git &&
cd ./luastatus &&
cmake . && make && sudo make install &&
