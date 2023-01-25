#!/bin/zsh

cd /opt

git clone git@github.com:neovim/neovim.git
cd neovim

git checkout stable

make CMAKE_BUILD_TYPE=Release \
    CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/opt/neovim"

sudo make install
