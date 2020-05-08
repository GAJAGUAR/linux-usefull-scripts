#!/bin/bash

echo "=> Downloading Neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

echo "=> Making image file executable"
chmod u+x nvim.appimage

echo "=> Extracting"
./nvim.appimage --appimage-extract

echo "=> Exposing nvim globally"
sudo mv squashfs-root / && sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

echo "=> Installing required dependencies"
sudo apt-get install python-neovim
sudo apt-get install python3-neovim
