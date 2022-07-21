#!/bin/bash

git clone https://bitbucket.org/psaikido/neovim


FILE=/home/hughie/.config/nvim
if test -e "$FILE"; then
    mv $FILE $FILE.bk
else
    mkdir /home/hughie/.config/nvim
    ln -s /home/hughie/neovim/lua /home/hughie/.config/nvim/lua
    ln -s /home/hughie/neovim/init.vim /home/hughie/.config/nvim/init.vim
fi

sudo pacman -S python python-pip xclip nodejs npm
pip3 install --upgrade pynvim ueberzug
npm install -g neovim
  
