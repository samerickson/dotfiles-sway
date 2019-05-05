# ~/.bashrc

[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize
PATH="$PATH:$HOME/.bin"

# Set bash prompt [simple and clean]
PS1='$ '

# Set ls to use color and set that color to bold green
export LS_COLORS='di=1;32'

# Apps
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="evince"
export FILE="nautilus"

export GPG_TTY=$(tty)
export GDK_BACKEND=wayland

[ -f ~/.config/aliasrc ] && . ~/.config/aliasrc
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
