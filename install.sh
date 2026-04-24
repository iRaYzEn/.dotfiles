#!/bin/bash


bash $HOME/.dotfiles/bin/install_packages.sh

sudo chsh -s $(which zsh)
stow .

# to make the gtk application dark theme like evince for example
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

sudo pacman -S ghostty
# i3-sensible-terminal don't support ghostty so just link ghostty to xterm it is fine i guess
sudo ln -sf /usr/bin/ghostty /usr/bin/xterm
