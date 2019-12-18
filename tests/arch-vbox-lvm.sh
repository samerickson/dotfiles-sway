#!/bin/bash

# Assumes a 25GB VDI
# NOTE: you need to add lvm to the HOOKS in the /etc/mkinitcpio.conf
# This script does not do this automatically

# Creates 4 partitions:
#	/dev/sda1	200M		/boot
#	/dev/sda2	4G			swap
#	/dev/sda3	10G			/
#	/dev/sda4	REMAINING	/home
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

# Download next script, chroot into new system
curl https://raw.githubusercontent.com/samerickson/dotfiles/master/tests/chroot.sh > /mnt/chroot.sh && arch-chroot /mnt /bin/bash
