#!/bin/bash

pacman -Syyy
pacstrap /mnt base linux linux-firmware vim wpa_supplicant dhcpcd
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt

