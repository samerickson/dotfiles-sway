#! /bin/sh

# This script re-installs all software that has been installed via pacman

for pkg in $(pacman -Q | cut -d' ' -f1); do
    pacman -S --noconfirm $pkg
done
