#!/bin/bash

# This script exists to install arch Linux using my personal specifications.
#	Mostly, I am to lazy to do this by hand, automation is king.

# Check that things are updated and that the script is being ran by root
pacman -Syyu || echo "ERROR: Are you running this script as root?"

# Partition the disks

echo "Please enter name of hard drive to be partitioned:"
read DRIVE

echo "Are you sure you want to erase and partition $DRIVE? [y/n]"
read CONFIRMATION

[ ! "$CONFIMATION" == "y" ] && exit


cat <<EOF | fdsik /dev/sda
g
n

+200M
n

+25G
n

+16G
n


w
EOF

mkfs.vfat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkswap /dev/sda3
mkfs.ext4 /dev/sda4

swapon /dev/sda3
mount /dev/sda2 /mnt
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
mkdir -p /mnt/home
mount /dev/sda4 /mnt/home

pacman -Sy --noconfirm archlinux-keyring

pacstrap /mnt base base-devel

genfstab -U /mnt > /mnt/etc/fstab

printf "Arch is now installed in /mnt\n"
printf "Note, if using a SSD make sure /etc/fstab uses options:\n"
printf "\trw,relatime,data=ordered,discard\n"
