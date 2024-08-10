#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt insatll fzf
sudo apt install nitrogen
sudo apt install color-picker
sudo apt install ffmpeg
sudo apt install stow 
stow .
sudo apt install curl
sudo apt install compton
sudo apt install shutter
sudo apt install pavucontrol
sudo apt install tmux
sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh
sudo apt install i3
sudo apt install xclip
sudo apt install git
sudo apt install unzip
sudo apt install ripgrep
sudo apt install gcc
sudo apt install make

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

sudo apt install python3
sudo apt install pip3 
pip3 install yt-dlp
pip3 install spotdl


# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts

# nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# golang
curl -O https://go.dev/dl/go1.22.6.src.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz
