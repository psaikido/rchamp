#!/bin/bash

loadkeys uk
timedatectl set-ntp true
read -p 'wifi name? ' wifiname
read -p 'passphrase? ' wifipwd
iwctl --passphrase $wifipwd station wlan0 connect $wifiname
reflector -c 'United Kingdom' -a 12 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syyy

