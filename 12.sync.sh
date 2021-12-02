#!/bin/bash

timedatectl set-ntp true
timedatectl status

reflector -c 'United Kingdom' -a 12 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syyy

