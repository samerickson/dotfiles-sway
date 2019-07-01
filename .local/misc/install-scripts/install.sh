
# This script is suppose to make installing Arch Linux for my personal machine
#	easier, as I have this habbit with playing around with things ans nuking my
#	system in one way or another. I need to start using virtual box for testing
#	these things out better.

# install some default utilities
sudo pacman -S --noconfirm git wget

install_yay() {
	git clone https://aur.archlinux.org/yay.git /tmp/yay
	cd /tmp/yay
	makepkg --noconfirm -si >/dev/null
	rm -r /tmp/yay
}

aur_install() {
	yay -S --noconfirm
}

pac_install() {
	sudo pacman -S --noconfirm $@
}
# Add bootloader information
configure-boot-loader() {
	wget https://samerickson.me/files/bootloader.conf
}

# Add systemd files

# Create user with generic password to be changed later

# Add dotfiles

