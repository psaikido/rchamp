git clone https://bitbucket.org/psaikido/dotfiles

FILE=/home/hughie/.xinitrc
if test -f "$FILE"; then
    mv $FILE $FILE.bk
else
    ln -s /home/hughie/dotfiles/configs/xinitrc /home/hughie/.xinitrc
fi

FILE=/home/hughie/.bashrc
if test -f "$FILE"; then
    mv $FILE $FILE.bk
else
    ln -s /home/hughie/dotfiles/configs/bashrc.arch /home/hughie/.bashrc
fi

FILE=/home/hughie/.bash_aliases
if test -f "$FILE"; then
    mv $FILE $FILE.bk
else
    ln -s /home/hughie/dotfiles/configs/bash_aliases /home/hughie/.bash_aliases
fi

FILE=/home/hughie/.config/i3/config
if test -f "$FILE"; then
    mv $FILE $FILE.bk
else
    mkdir /home/hughie/.config/i3
    ln -s /home/hughie/dotfiles/configs/i3.config /home/hughie/.config/i3/config
fi

FILE=/home/hughie/.config/i3blocks/i3blocks.conf
if test -f "$FILE"; then
    mv $FILE $FILE.bk
else
    mkdir /home/hughie/.config/i3blocks
    ln -s /home/hughie/dotfiles/configs/i3blocks.conf /home/hughie/.config/i3blocks/i3blocks.conf

    ln -s /home/hughie/dotfiles/i3block-scripts /home/hughie/.config/scripts
fi

FILE=/home/hughie/.config/nvim
if test -e "$FILE"; then
    mv $FILE $FILE.bk
else
    mkdir /home/hughie/.config/nvim
    ln -s /home/hughie/dotfiles/neovim/lua /home/hughie/.config/nvim/lua
    ln -s /home/hughie/dotfiles/neovim/init.lua /home/hughie/.config/nvim/init.lua
fi

git clone https://gitlab.com/dwt1/wallpapers  

#--touchpad  
#--at the terminal go:  
#xinput  
#--find the id of the touchpad (ie. 12)  
#xinput list-props 12  
#--edit  
#/usr/share/X11/xorg.conf.d/40-libinput.conf  
#--find the section for touchpad and add  
#Option "Tapping" "On"  
#Option "Natural Scrolling" "True"  

