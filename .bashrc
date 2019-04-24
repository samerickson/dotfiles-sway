# ~/.bashrc

# check if running interactivly and if using terminal emulator
[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

# Set bash prompt
PS1='$ '

# Set ls to use color and set that color to bold green
export LS_COLORS='di=1;32'
alias ls="ls --color=auto"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Source bash auto complete files
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
