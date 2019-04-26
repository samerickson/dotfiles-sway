#!/bin/sh

export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="evince"
export FILE="nautilus"

[ -f ~/.bashrc ] && source "$HOME/.bashrc" >/dev/null
