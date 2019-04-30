DOTFILE PROJECT [SWAYWM]
========================
This project is interned to provide new Linux users with the information needed to 
modify their environment using scripts and configuration files in order to improve 
their workspace efficiency and be able to program faster.

This is the master branch containing my 
[tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager) of choice. 
For more information: [why use a tiling window manager?](https://www.youtube.com/watch?v=Lj1IfdKY0CU).

Installing
----------
**Warning:** Backup your current dotfiles before proceeding. THe following commands **will** overwrite any existing files. 
```
git clone https://github.com/samerickson/dotfiles.git
cd dotfiles
bash install.sh
```

Dependencies
------------
Make sure that you have [mako](https://github.com/emersion/mako) installed for important notifications about the system. 

Current software:
-----------------
- [nautilus](https://wiki.archlinux.org/index.php/GNOME/Files) - File manager.
- [ranger](https://github.com/ranger/ranger) - ALternate file manager.
- [imv](https://github.com/eXeC64/imv) - Image previews
- [wf-recorder](https://github.com/ammen99/wf-recorder) - Screen recorder
- [grim](https://github.com/emersion/grim) - Screen shot tool
- [firefox](https://wiki.archlinux.org/index.php/Firefox) - Web browser
- [discord](https://wiki.archlinux.org/index.php/Discord) - Social media
- [lux](https://wiki.archlinux.org/index.php/Backlight) - Screen back light adjustments
- [lxappearance](https://www.archlinux.org/packages/community/x86_64/lxappearance/) - Theme manager
- [neovim](https://github.com/neovim/neovim) - Text editor
- [pavucontrol](https://wiki.archlinux.org/index.php/PulseAudio/Configuration) - Audio controller
- [pulsemixer](https://github.com/GeorgeFilipkin/pulsemixer) - This is used for key bindings involving audio controls
- [sway](https://github.com/swaywm/sway) - Window manager 
- [kitty](https://github.com/kovidgoyal/kitty) - Terminal Emulator

I want to use these dotfiles for my own repository
--------------------------------------------------
I have written a [blog](https://samerickson.me/blog/sharing-your-dotfiles/) post about this process, our you can read the **TL;DR** version below.

Great, here is some information to get you started.

1. Clone the repository if you have not already.
2. Create your own [git bare](https://www.atlassian.com/git/tutorials/dotfiles) dot files repository on your local machine.
3. Create a `dotfiles` repository on your favorite hosting service [`Github`, `Gitlab`, `Bitbucket`]
4. Add the URL to that repository as a remote to your dotfiles repository
5. At this point you are all set to start backing up your dotfiles, and sharing them with others.


Roadmap for this branch
-----------------------
**Current development plan (no particular order):**
If you have solved one of the problems below, please create a pull request.
- Write a list of dependencies
- key bindings and tools should first check if all required tools are installed, notifying the user that what tools they need to install to use the desired functionality.
- Convert key mappings to pdf that can be displayed to the user when a specific key binding is pressed.
- Find a better way of connecting to wifi. Currently using `nmtui` which works, but does not connect to enterprise wifi, which is a problem for students who want to connect to their university wifi.
- Write post in wiki about screen shots
- Fix keyboard selection method (more info in sway config)
- Implement notifications though out the dotfiles
