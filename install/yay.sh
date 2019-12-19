#!/bin/bash

# Script that installs yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
