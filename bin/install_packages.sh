#!/bin/bash

yes | sudo pacman -S $(cat $HOME/.dotfiles/packages/pacman.txt)



if [ -f $HOME/dl/git ];then
    cd $HOME/dl/git/ && git clone https://github.com/morganamilo/paru
    cd $HOME/dl/git/paru && makepkg -si
else
    mkdir -p $HOME/dl/git
    cd $HOME/dl/git/ && git clone https://github.com/morganamilo/paru
    cd $HOME/dl/git/paru/ && makepkg -si
fi
