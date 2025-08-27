#!/bin/bash

yes | sudo pacman -S $(cat $HOME/.dotfiles/software.txt)


# this thing is useful 
#sudo ln -sf /usr/bin/ghostty /usr/bin/xterm

if [ -f $HOME/dl/git ];then
    cd $HOME/dl/git/ && git clone https://github.com/morganamilo/paru
    makepkg -si
else
    mkdir -p $HOME/dl/git
    cd $HOME/dl/git/ && git clone https://github.com/morganamilo/paru
    cd $HOME/dl/git/paru/ && yes | sudo makepkg -si
fi
