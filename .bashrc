# ~/.bashrc

[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

PATH="$PATH:$HOME/.bin"

export EDITOR="nvim"
export TERM="termite"
export BROWSER="firefox"
export READER="zathura"
export FILE="nautilus"

# Set bash prompt [simple and clean]
PS1='$ '

export LS_COLORS='di=1;33:ex=1;32:*.png=0;35:*.jpg=0;35:or=41;0:ln=0;36'
export GPG_TTY=$(tty)

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ]&& exec sway

[ -r ~/.config/aliasrc ] && . ~/.config/aliasrc
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
