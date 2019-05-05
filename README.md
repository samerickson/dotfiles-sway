DOTFILE PROJECT [SWAYWM]
========================
This project is interned to provide new Linux users with the information needed to 
modify their environment using scripts and configuration files in order to improve 
their workspace efficiency and be able to program faster.

Checking system compatibility
-----------------------------
To check if these dotfiles will be compatible on your system run cthe script `~/.bin/system-check`
with sudo (as it makes use of the command `pacman -Qe` and thus requires sudo).
```
sudo system-check
```
This will tell you if you are missing a required package.

Dependencies
------------
```
sway
i3blocks
bc
mako
rofi
termite
firefox
nautilus
grim
wf-recorder
xorg-server-xwayland
lux
neovim
pulsemixer
ttf-emojione
ttf-symnola
nerd-fonts-inconsolata
```
