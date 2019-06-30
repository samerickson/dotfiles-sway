# ~/.bashrc

[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

PATH="$PATH:$HOME/.local/bin:$HOME/.local/private/bin"

# Default applications
export EDITOR="nvim"
export TERM="termite"
export VISUAL="$EDITOR"
export BROWSER="firefox"
export READER="zathura"
export FILE="nautilus"

# Default colors
source "$HOME/.config/colorsrc"

# Set bash prompt [simple and clean]
PS1='$ '

export LS_COLORS='di=1;33:ex=1;32:*.png=0;35:*.jpg=0;35:or=41;0:ln=0;36'
export GPG_TTY=$(tty)

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ]&& exec sway

[ -r "$HOME/.config/aliasrc" ] && . "$HOME/.config/aliasrc"
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
