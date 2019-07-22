DOTFILES [SWAYWM]
=================
My current dotfiles to recreate my development environment.

![Clean image of my desktop](images/clean.png)
![Busy image of my desktop](images/busy.png)

Features
--------

**Moderatly minimal install:**
Not quite [suckless](https://suckless.org) Level, but minimal enough to
lightweight, quick to install, while still having applications the accomplish
everyday tasks. 

**Notifications with icons for system information:**
Information about system functions will be presented in the form of
notifications. Most, if not all key-bindings will notify you of any background
processes, or if anything has gone wrong.
![Image of notifications](images/notification.png)

**Organized for easy tinkering:**
It can be a pain when your configuration files and programs are scattered across
your hard drive, the current file tree map is as follows:
```
├── .bash_profile				Links to .bashrc
├── .bashrc						Bash configuration file
├── .config/					Containes most applicaions configuration files	
│   ├── aliasrc					All bash aliases
│   ├── i3blocks/
│   │   └── scripts/			Containes all scripts related to statusbar
│	│ 								functions
│   ├── wallpaper.png			Symlinked to the selected background image in
│									~/.config/wallpapers
├── .local/
│   ├── share/
│ 	│ 	└── .icons/				Contains all icons used for notifications
│   ├── bin/					Contains all executables, listed in $PATH
│   └── misc/
│       ├── install-scripts/	Contains various scripts used to install things
│		│ 							that may be considered useful.
│       └── systemd-files/		Contains all custom service for systemd
├── .profile:					Links to .bashrc
└── README.md:					This document.
```

Dependencies
------------
```
clipman
clipmenu
matcha-gtk-theme
matcha-icon-theme
mpv
imv
networkmanager
noto-fonts-emoji
pcmanfm
dmenu
grim
mako
sway
pulse
nvim
wf-recorder
zathura-djvu
zathura-prd-poppler
alsa-utils
chromium
i3blocks
jq
slurp
swayidle
swaylock
termite
```

Issues
------
**firefox:**
`Firefox` has way to many issues, for example below is an image of how firefox's
window sizing on startup is broken. 
![image of firefox window issues](images/firefox.png)
Links related to the issue:

* https://www.reddit.com/r/firefox/comments/624pjf/tiling_window_managersfirefox_screen_messed_up/
* https://github.com/xmonad/xmonad/issues/144
* https://bugzilla.mozilla.org/show_bug.cgi?id=686747

`Firefox` also produces sesuire inducing visuals while trying to resize. As much
as I would like to use `firefox` its just too broken for me to justify it. Even
though `chromium` does not officially support `wayland`, it still appears to be the
better option, as lots of other apps used are ran using `xwayland` anyway.

Wacom drawing tablets
---------------------
Wacom tablets work in sway, though you need to compile the driver from source
as there are some current issues with the version in the arch repositories
for some reason.

[Issue thread on StackExchange](https://askubuntu.com/questions/1063779/my-wacom-one-device-is-not-working)


[Installing input wacom from source](https://github.com/linuxwacom/input-wacom/wiki/Installing-input-wacom-from-source)

