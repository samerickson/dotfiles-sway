# ~/.bashrc

[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

PATH="$PATH:$HOME/.bin"

# Set bash prompt [simple and clean]
PS1='$ '

# Set ls to use color and set that color to bold green
export LS_COLORS='di=1;32'

export GPG_TTY=$(tty)

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ]&& exec sway

[ -f ~/.config/aliasrc ] && . ~/.config/aliasrc
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
