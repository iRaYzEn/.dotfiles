# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
neofetch

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

# bindkey
bindkey -M viins 'jk' vi-cmd-mode
bindkey -s ^f 'tmux-sessionizer\n'
bindkey -s ^p '/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1\n'

plugins=(git zsh-syntax-highlighting zsh-autosuggestions vi-mode)
source $ZSH/oh-my-zsh.sh

#nvim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#
#
 alias python="python3.12"
 alias fly="flyctl"
alias vim="nvim"
alias news="newsboat"

# ### PROGRAMMING LANGUAGE ###
#
# #golang
export PATH=$PATH:/usr/local/go/bin

export PASSWORD_STORE_GIT=true


# # Created by `pipx` on 2024-08-12 11:39:13
# export PATH="$PATH:/home/rayzen/.local/bin"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.fly/bin"


# pnpm
export PNPM_HOME="/home/rayzen/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
# echo hello world
