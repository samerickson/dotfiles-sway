# This script is intended to be ran after arch-lvm.sh or arch-vbox.sh
#	The assumption is that there is a base install located at /mnt
#	that is ready to be chrooted into.

# Set timezone
ln -sf /usr/share/zoneinfo/Canada/Pacific /etc/localtime
hwclock --systohc --utc

# Set language and charset options
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US ISO-8859-1" >> /etc/locale.gen
locale-gen

# Create initramfs
mkinitcpio -p

# Install bootloader 
# [may want to replace this with the systemd version in the future]
pacman -S grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# Inform user of items that still need to be addressed
echo "Base install is complete, thought there are still a few things to do."
echo "Enter the following commands:"
echo "	passwd"
echo "	useradd -m -G wheel <username>"
echo "	passwd <username>"
echo "If you used lVM you need to add lvm to the HOOKS in /etc/mkinitcpio.conf."
echo "Your new system is now installed"
echo "	exit"
echo "	reboot"
