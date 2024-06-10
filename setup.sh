#!/bin/bash

################################################################ NVIM
# clean the existing neovim configuration
sudo apt purge neovim -y
sudo apt update
sudo apt install software-properties-common -y

# install neovim
wget https://github.com/neovim/neovim/releases/download/v0.9.0/nvim.appimage
chmod +x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
sudo apt install silversearcher-ag ripgrep -y

# neovim setting
mkdir -p ~/.config/nvim
rm -rf ~/.config/nvim
git clone git@github.com:jjshoots/nvim_dotfiles.git ~/.config/nvim

# install neovim library
pip install -U neovim


################################################################ FISH
# install fish and some other utils
sudo apt install fish -y
sudo apt install trash-cli -y
sudo apt install bat -y

mkdir -p ~/.config/fish
rm -rf ~/.config/fish
git clone git@github.com:jjshoots/fish_dotfiles.git ~/.config/fish
