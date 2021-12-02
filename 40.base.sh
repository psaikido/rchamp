#!/bin/bash

pacman -Syyy 
pacman -S grub efibootmgr networkmanager network-manager-applet dialog mtools dosfstools base-devel linux-headers bluez bluez-utils cups alsa-utils pulseaudio pulseaudio-bluetooth git reflector xdg-utils xdg-user-dirs  

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable reflector.timer

