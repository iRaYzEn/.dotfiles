#!/bin/bash


bash ../bin/install_packages.sh

sudo chsh -s $(which zsh)
stow .
