#!/bin/bash

# if there's no wifi try `nmtui`

sudo reflector -c 'United Kingdom' -a 6 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syyy
sudo pacman -S xorg xorg-xinit xf86-video-intel i3-gaps i3lock i3status i3blocks dmenu alacritty neovim rofi ranger firefox lua nitrogen picom ntfs-3g libdvdread fzf python3 ruby2.7 rubygems noto-fonts-cjk noto-fonts thunar pass neomutt

yay -S mutt-wizard 

git clone https://bitbucket.org/psaikido/dotfiles
git clone https://gitlab.com/dwt1/wallpapers  

