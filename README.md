## rchamp installation

-- The goal here is to install archlinux (in virtualbox, an EFI system or an MBR system) with the i3 tiling window manager.  
-- On top of this there will be my neovim preferences and personal tweaks to run a LAMP stack.  
-- Arch is the 'L' of LAMP giving us arch + amp, archamp or rchamp.

[Arch Installation Guide](https://wiki.archlinux.org/title/Installation_guide)  
[Ermanno Ferrari tutorial](https://youtu.be/8T0vvf1xm58)  

-- virtualbox shared folder linking host ~/dotfiles/rchamp with /rchamp on guest  

-- The notes here are turned into runable shell scripts split up into stages to handle the differences in target systems.  

-- Boot a usb arch iso and:  

- Get an internet connection  
    `iwctl`  
    `device list`  
    `station wlan0 scan`  
    `station wlan0 get-networks`  
    `station wlan0 connect [network name]`  

 
- initialise  
    `git clone https://bitbucket.org/psaikido/rchamp`  
    10.init.sh
    

- Partitioning (manual)
    15.partitioning.md


- Install base system with pacstrap and create fstab
    20.pacstrap.fstab.sh


- Get the scripts onto the mount point, either  
    `cp -r /rchamp /mnt` -- in virtualbox or   
    `cp -r ~/dotfiles /mnt`  


- Move onto the base system
    `arch-chroot /mnt`  


- EFI create a swapfile  
    `dd if=/dev/zero of=/swapfile bs=1M count=1024 status=progress`  
    `chmod 600 /swapfile`  
    `mkswap /swapfile`  
    `swapon /swapfile`  
    `vim /etc/fstab`  
    `/swapfile   none    swap    defaults    0 0`  


- Localisation  
    30.localisation.sh  


- Install base   
    40.base.sh  


- MBR: grub  
    50.grub.mbr.sh  


- EFI: grub  
    60.grub.efi.sh  


- Users & Groups  
    65.users.md


- Login to new system and install i3 etc.
    70.gui.sh


- SymLinks  
    80.configs.sh


- Apache, php, mysql
    90.amp.sh
