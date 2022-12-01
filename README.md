## rchamp installation

-- Install archlinux (in virtualbox, an EFI system or an MBR system) with the i3 tiling window manager.  
-- Get latest archiso (currently archlinux-2022.11.01-x86_64.iso) onto a usb.
-- On top of this there will be my preferences and personal tweaks to run a LAMP stack.  
-- Arch is the 'L' for 'linux' of 'LAMP' giving us arch + amp, 'archamp' or 'rchamp'.

[Arch Installation Guide](https://wiki.archlinux.org/title/Installation_guide)  
[Ermanno Ferrari tutorial](https://youtu.be/8T0vvf1xm58)  

-- Boot a usb arch iso. 
-- Run the triumphant 'archinstall' script.

- Get an internet connection  
    `iwctl`  
    `device list`  
    `station wlan0 scan`  
    `station wlan0 get-networks`  
    `station wlan0 connect [network name]`  
    `quit`

 
- initialise  
    `pacman -Sy`
    `pacman -S git vim`
    `git clone https://bitbucket.org/psaikido/rchamp`  

- Run
    `archinstall`

- After the installer runs it should arch-chroot you in to the new root.
    `cd /home/hughie`

- Either get rchamp from the liveiso you've just come from or get it again with the 'initialise' commands above.

- Run from the new /home/hughie
    `rchamp/10.base`
    `rchamp/20.gui`

- exit, umount and reboot removing the liveiso.  
Check all is well.
If there's no internet connection try
`nmtui` or 
`nm-applet`

- Run from the new /home/hughie
    `rchamp/30.after-login-yay-pip`
    `rchamp/40.nvim`
    `rchamp/50.link-configs`
    Reboot into new user

- Manual from here
    `git clone https://bitbucket.org/psaikido/bin`
    Get keys and stuff from a usb
    Set up ssh, pgp, addressbook and so forth
    Careful line by line through rchamp/60.amp

Optionally, depending on the machine, the plan now is to use a second disk, 
/dev/sdb, for the home directory
and the current home (installed on /dev/sda as /home/hughie) as the backups dir.
We should have sda as the boot, root and backups disk
and sdb as /home/hughie.
Twiddle /etc/fstab using lsblk and blkid to set it up.
Check rchamp/example-fstab.

