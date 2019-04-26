# ~/.bashrc

# check if running interactivly and if using terminal emulator
[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

# Set bash prompt
PS1='$ '

# Set ls to use color and set that color to bold green
export LS_COLORS='di=1;32'

# Enable color mode in grep by default
export GREP_OPTIONS='--color=always'

# load alias file
[ -f ~/.config/aliasrc ] && . ~/.config/aliasrc

# Source bash auto complete files
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
