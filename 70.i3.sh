#!/bin/bash

# if there's no wifi try `nmtui`

sudo reflector -c 'United Kingdom' -a 6 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syyy
sudo pacman -S xorg xorg-xinit xf86-video-intel i3-wm i3lock i3status i3blocks dmenu alacritty neovim rofi ranger firefox lua nitrogen picom ntfs-3g

