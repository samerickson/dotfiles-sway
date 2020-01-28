#!/bin/bash

date="$(date '+%Y-%m-%d')"
mkdir "/backup/$date"

# Make list of installed packages
pacman -Qqe > "/backup/$date/pkg-list.txt"
pacman -Qqem > "/backup/$date/foreign-pkg-list.txt"
pacman -Qtdq > "/backup/$date/orphan-pkg-list.txt"

# Find broken symlinks
find / -path /proc -prune -o -xtype l -print > "/backup/$date/broken-symlinks.txt"
