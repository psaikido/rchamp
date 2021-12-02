## rchamp on virtualbox install

-- The goal here is to install archlinux (in virtualbox, an EFI system or an MBR system) with the i3 tiling window manager.  
-- On top of this there will be my neovim preferences and personal tweaks to run a LAMP stack.  
-- Arch is the 'L' of LAMP giving us arch + amp, archamp or rchamp.

[Arch Installation Guide](https://wiki.archlinux.org/title/Installation_guide)  
[Ermanno Ferrari tutorial](https://youtu.be/8T0vvf1xm58)  

-- virtualbox shared folder linking host ~/dotfiles/rchamp with /rchamp on guest
-- On metal installations git clone https://bitbucket.org/psaikido/dotfiles
-- The notes here are turned into runable shell scripts split up into stages to handle the differences in target systems.
-- Boot a usb arch iso and:

- initialise
    10.init.sh
    
    
- Get an internet connection
    11.wifi.sh
    `iwctl`  
    `device list`  
    `station wlan0 scan`  
    `station wlan0 get-networks`  
    `station wlan0 connect [network name]`  


- Sync time and pacman
    12.sync.sh


- MBR: create partitions, table type 'dos', 'swap', 'main distro' and maybe 'home'  
    `fdisk /dev/sda`  
    `mktable`  
    `g`  
    `mkpart` --and choose start, end and filetype, 'linux-swap' for the swap partition
    `set 1 boot on`  
    `set 2 bios_grub on`  
    `set 3 swap on`  
     
    `mkfs.ext4 /dev/sda[n]`  
    `mkswap /dev/sda[n]`  
    `swapon /dev/sda[n]`  

    -- a print of the partions from `parted`:  
    Number Start   End     Size    File system     Name   Flags  
    1      1024MB  21.0GB  20.0GB  ext4            rchamp boot, esp  
    6      117.0GB 118.0GB 1000MB                         bios_grub  
    5      118.0GB 128.0GB 10GB    linux-swap(v1)         swap  


- EFI:  
    `gdisk`  
    -- Make a 200M efi partition.  
    -- Make 2 ext4 partitions for distros.  
    -- We should now have something like:  
    /dev/sda1 EFI  
    /dev/sda2 ext4  
    /dev/sda3 ext4  

    -- Format them:  
    `mkfs.fat -F32 /dev/sda1`  
    `mkfs.ext4 /dev/sda2`  
    `mkfs.ext4 /dev/sda3`  
 
 
- MBR: Mount the main distro partion:  
    `mount /dev/sda[x] /mnt`  

- EFI: Mount the efi system partion:  
    `mkdir -p /mnt/boot/efi`  
    `mount /dev/sda1 /mnt/boot/efi`  


- Check it all looks right with:  
    `lsblk`  


- Install base system with pacstrap
    20.pacstrap.sh


- Make the file system table
    25.fstab.sh
    
    
- Get the scripts onto the mount point, either
    `cp -r /rchamp /mnt` -- in virtualbox or 
    `git clone https://bitbucket.org/psaikido/dotfiles`  
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
    `passwd`  
    `useradd -mG wheel [user]`  
    `passwd [user]`  
    `visudo`  -- uncomment the line with '%wheel ALL'  


- Exit and reboot  
    `exit`  
    `umount -a`  
    `reboot`  -- (take out usb)


- Login to new system and install i3 etc.
    70.i3.sh


- SymLinks  
    80.dirs.sh


- [personalised configs](90.personalisation.md)  

