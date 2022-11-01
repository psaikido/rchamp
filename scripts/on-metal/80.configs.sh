#!/bin/bash

#git clone https://bitbucket.org/psaikido/dotfiles
#git clone https://gitlab.com/dwt1/wallpapers  

home='/home/hughie/test'

FILE=$home/.xinitrc
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
ln -s $home/dotfiles/configs/xinitrc $home/.xinitrc

FILE=$home/.bashrc
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
ln -s $home/dotfiles/configs/bashrc.arch $home/.bashrc

FILE=$home/.bash_aliases
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
ln -s $home/dotfiles/configs/bash_aliases $home/.bash_aliases

FILE=$home/.config/i3/config
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
mkdir $home/.config/i3
ln -s $home/dotfiles/configs/i3.config $home/.config/i3/config

FILE=$home/.config/i3blocks/i3blocks.conf
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
mkdir $home/.config/i3blocks
ln -s $home/dotfiles/configs/i3blocks.conf $home/.config/i3blocks/i3blocks.conf
ln -s $home/dotfiles/i3block-scripts $home/.config/scripts

FILE=$home/.tmux.conf
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
mkdir $home/.tmux
ln -s $home/dotfiles/configs/tmux.conf $home/.tmux.conf
