
# If you get an issue with userspace not being enabled, run:
#		sudo sysctl kernel.unprivileged_userns_clone=1

git clone https://aur.archlinux.org/brave-bin.git
cd brave-bin
makepkg -si
