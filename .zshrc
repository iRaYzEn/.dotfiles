# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions vi-mode)

source $ZSH/oh-my-zsh.sh
# bindkey
bindkey -M viins 'jk' vi-cmd-mode
bindkey -s ^f 'tmux-sessionizer\n'
bindkey -s ^p '/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1\n'

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
# alias vpnoff="sudo wg-quick up wg0"
# alias vpnon="sudo wg-quick down wg0"


# ### exports ###

# #golang
export PATH=$PATH:/usr/local/go/bin

# pass
export PASSWORD_STORE_GIT=true

# bin
export PATH="$PATH:$HOME/bin"

# # Created by `pipx` on 2024-08-12 11:39:13
# export PATH="$PATH:/home/rayzen/.local/bin"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fly
export PATH="$PATH:$HOME/.fly/bin"

# pnpm
export PNPM_HOME="/home/rayzen/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
FNM_PATH="/home/rayzen/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/rayzen/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# fnm
FNM_PATH="/home/rayzen/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/rayzen/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
