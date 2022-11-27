## rchamp installation

-- Get latest archiso (currently archlinux-2022.11.01-x86_64.iso) onto a usb.

-- The goal here is to install archlinux (in virtualbox, an EFI system or an MBR system) with the i3 tiling window manager.  

-- On top of this there will be my neovim preferences and personal tweaks to run a LAMP stack.  

-- Arch is the 'L' for 'linux' of 'LAMP' giving us arch + amp, 'archamp' or 'rchamp'.

[Arch Installation Guide](https://wiki.archlinux.org/title/Installation_guide)  
[Ermanno Ferrari tutorial](https://youtu.be/8T0vvf1xm58)  

-- The notes here are turned into runable shell scripts (dir=./scripts-pre-archinstall) split up into stages to handle the differences in target systems. They have been superceded by the triumphant 'archinstall' script from arch themselves.

-- Boot a usb arch iso and:  

- Get an internet connection  
    `iwctl`  
    `device list`  
    `station wlan0 scan`  
    `station wlan0 get-networks`  
    `station wlan0 connect [network name]`  
    `quit`

 
- initialise  
    `pacman -Sy`
    `pacman -S git`
    `git clone https://bitbucket.org/psaikido/rchamp`  

- Edit the ./rchamp/*.json files.
- Possibly do an `archinstall --dry-run` to make sure those json files are set up right.
- Run
    `archinstall --config ./rchamp/config.json --creds ./rchamp/creds.json --disk-layouts ./rchamp/disk.json`

- After the installer runs it should arch-chroot you in to the new root.
    `cd /home/hughie`

- Either get rchamp from the liveiso you've just come from or get it again with the 'initialise' commands above.

- Run from the new /home/hughie
    `rchamp/10.archinstall`
    `rchamp/20.nvim`
    `rchamp/30.link-configs`

- Boot and check all is well.
The plan now is to use the second disk, /dev/sdb, for the home directory
and the current home (installed on /dev/sda as /home/hughie) as the backups dir.
We should have sda as the boot, root and backups disk
and sdb as /home/hughie.
Twiddle /etc/fstab using lsblk and blkid to set it up.
Check rchamp/example-fstab.

