# ~/.bashrc

# check if running interactivly and if using terminal emulator
[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

# Set bash prompt
PS1='$ '

# Set ls to use color and set that color to bold green
export LS_COLORS='di=1;32'

# Apps
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="evince"
export FILE="nautilus"

# Some wayland settings
export GDK_BACKEND=wayland

# load alias file
[ -f ~/.config/aliasrc ] && . ~/.config/aliasrc

# Source bash auto complete files
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
