#!/bin/bash
pacstrap /mnt base linux linux-firmware nano man-db man-pages texinfo
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
locale-gen
localectl set-locale LANG=en_US.UTF-8
echo "Hostname here" > /etc/hostname
passwd
