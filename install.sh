#!/bin/bash


sudo su
bash $HOME/.dotfiles/bin/install_packages.sh

sudo chsh -s $(which zsh)
stow .
