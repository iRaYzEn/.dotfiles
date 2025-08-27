

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export ZDOTDIR="$HOME/.config/zsh/"
export HISTFILE="$XDG_DATA_HOME"/zsh/history
# export GNUGPHOME="$XDG_DATA_HOME"/gnupg
# export GNUGPHOME="$XDG_DATA_HOME"/oh-my-zsh
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

export TERMINAL=ghostty

# [ -d "$XDG_STATE_HOME"/zsh ] || sudo mkdir -p "$XDG_STATE_HOME"/zsh
# export HISTFILE="$XDG_STATE_HOME"/zsh/history
# [ -d "$XDG_CACHE_HOME"/zsh ] || sudo mkdir -p "$XDG_CACHE_HOME"/zsh
# # zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
