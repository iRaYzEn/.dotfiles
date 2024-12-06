#!/bin/bash

# Update and install essential packages
echo "Updating package list..."
sudo apt update

echo "Installing programs..."
sudo apt install -y \
    tmux \
    fzf \
    i3 \
    dmenu \
    nitrogen \
    curl \
    zsh \
    git

# Install Brave Browser
echo "Adding Brave Browser repository and key..."
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Install Spotify
echo "Adding Spotify repository and key..."
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client

# Install Neovim
echo "Downloading and installing Neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/bin/nvim
rm nvim-linux64.tar.gz  # Clean up tar.gz file

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add Oh My Zsh plugins
echo "Adding Oh My Zsh plugins..."
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# Suggest updating ~/.zshrc to enable plugins
echo "To enable the plugins, add them to the 'plugins' array in your ~/.zshrc file."
echo "Example:"
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)"

# Clean up
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean

echo "Complete!"
