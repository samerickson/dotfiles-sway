# ~/.bashrc

[[ $- != *i* ]] && return
[[ $DISPLAY ]] && shopt -s checkwinsize

# History hacks
HISTSIZE=50000000000000000
HISTFILESIZE=9999999999999
shopt -s histappend 
shopt -s direxpand
shopt -s expand_aliases

export PROMPT_COMMAND='history -a; history -c; history -r; printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'


GOPATH="$HOME/.go"
PATH="$PATH:$HOME/.local/bin:$HOME/.local/private/bin:$GOPATH/bin"

# Default applications
export EDITOR="nvim"
export TERM="termite"
export VISUAL="$EDITOR"
export BROWSER="chromium"
export READER="zathura"
export FILE="nautilus"

# Default colors
source "$HOME/.config/colorsrc"

# Set bash prompt [simple and clean]
PS1='$ '

export LS_COLORS='di=1;33:ex=1;32:*.png=0;35:*.jpg=0;35:or=41;0:ln=0;36'
export GPG_TTY=$(tty)

# If running from tty1 start sway
#[ "$(tty)" = "/dev/tty1" ]&& exec sway

[ -r "$HOME/.config/aliasrc" ] && . "$HOME/.config/aliasrc"
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
