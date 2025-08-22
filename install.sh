#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

bash ../bin/install_packages.sh

sudo chsh -s $(which zsh)
stow .
