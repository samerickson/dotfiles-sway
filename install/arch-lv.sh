#!/bin/bash

# This script bootstraps the base installation process of Arch Linux
#	You should not use this. This script is here because I am lazy.

# Creates 4 partitions:
#	/dev/sda1	200M		/boot
#	/dev/sda2	4G			swap
#	/dev/sda3	20G			/
#	/dev/sda4	REMAINING	/home

# This should add partition types. Linux is smart enough to
#	figure out what type each of the partition are, but not all
#	operating systems do this. In the case of dual-booting, it's
#	better to just do this.
cat <<EOF | fdisk /dev/sda
n
p
1


t
8e
w

EOF

# Create logical patition physical volume and volume group
pvcreate /dev/sda1
vgcreate data /dev/sda1

# Create logical volumes
lvcreate -L 200M -n boot data
lvcreate -L 4G -n swap data
lvcreate -L 10G -n root data
lvcreate -L 8G -n home data
# Space left on disk for the creation of LVM snapshots

# Create the filesystems
mkfs.vfat -F32 /dev/data/boot
mkswap /dev/data/swap
mkfs.ext4 /dev/data/root
mkfs.ext4 /dev/data/home

# Mount the files systems
mount /dev/data/root /mnt
mkdir /mnt/boot
mkdir /mnt/home
mount /dev/data/boot /mnt/boot
mount /dev/data/home /mnt/home

# Install basic packages
pacstrap /mnt base linux linux-firmware neovim networkmanager

# Generate the fstab, note id using an SSD there are some
#	optimizations that should be done here
genfstab -U /mnt > /mnt/etc/fstab

# Add hostname
echo "arch-vb" > /mnt/etc/hostname

# Download next script
curl https://raw.githubusercontent.com/samerickson/dotfiles/master/tests/chroot.sh > /mnt/chroot.sh

echo "You may now chroot into /mnt"
