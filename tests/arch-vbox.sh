#!/bin/bash

# Assumes a 25GB VDI

# Creates 4 partitions:
#	/dev/sda1	200M		/boot
#	/dev/sda2	4G			swap
#	/dev/sda3	10G			/
#	/dev/sda4	REMAINING	/home
cat <<EOF | fdisk /dev/sda
o
n
p


+200M
n
p


+4G
n
p


+10G
n
p


w
EOF

# Create the filesystems
mkfs.vfat -F32 /dev/sda1
mkswap /dev/sda2
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4

# Mount the files systems
mount /dev/sda3 /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home

# Install basic packages
pacstrap /mnt base linux linux-firmware neovim networkmanager

# Generate the fstab, note id using an SSD there are some
#	optimizations that should be done here
genfstab -U /mnt > /mnt/etc/fstab

# Add hostname
echo "arch-vb" > /mnt/etc/hostname

# Download next script, chroot into new system, run script, then remove script
curl https://raw.githubusercontent.com/samerickson/dotfiles/master/tests/chroot.sh > /mnt/chroot.sh && arch-chroot /mnt bash chroot.sh && rm chroot.sh
