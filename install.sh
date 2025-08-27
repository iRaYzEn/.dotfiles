#!/bin/bash


bash $HOME/.dotfiles/bin/install_packages.sh

sudo chsh -s $(which zsh)
stow .
sudo pacman -S ghostty
# i3-sensible-terminal don't support ghostty so just link ghostty to xterm it is fine i guess
sudo ln -sf /usr/bin/ghostty /usr/bin/xterm

