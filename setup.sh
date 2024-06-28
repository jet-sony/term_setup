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
mkdir -p /home/dev/.config/nvim
rm -rf /home/dev/.config/nvim
git clone git@github.com:jjshoots/nvim_dotfiles.git /home/dev/.config/nvim

# install neovim library
pip install -U neovim

# install doq for vim/pydocstring
pip install -U doq
touch /home/dev/.config/nvim/vim/set.vim
echo "let g:pydocstring_doq_path = '$(which doq)'" > /home/dev/.config/nvim/vim/set.vim

################################################################ FISH
# install fish and some other utils
sudo apt install fish -y
sudo apt install trash-cli -y
sudo apt install bat -y
sudo apt install fzf -y

# download exa
mkdir -p exa
cd exa
wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
unzip exa-linux-x86_64-v0.10.1.zip
sudo mv ./bin/exa /usr/local/bin
cd ..
rm -rf exa

# download fish
mkdir -p ~/.config/fish
rm -rf ~/.config/fish
git clone git@github.com:jjshoots/fish_dotfiles.git ~/.config/fish

echo "fish" >> ~/.bashrc
