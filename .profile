#!/bin/sh

export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="firefox"
export READER="evince"
export FILE="nautilus"

# Some wayland settings
export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_FORCE_DPI=physical
export QT_WAYLND_DISABLE_WINDOWDECORATION=1

[ -f ~/.bashrc ] && source "$HOME/.bashrc" >/dev/null
