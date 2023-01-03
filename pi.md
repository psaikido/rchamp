https://itsfoss.com/install-arch-raspberry-pi/

wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz

sudo su -
fdisk /dev/sdc
`make two #1 100M - the boot, and #2 the rest of the disk - the root`
#1 boot = /dev/sdc1
#2 root = /dev/sdc2

mkfs.vfat /dev/sdc1
mkdir /mnt/boot
mount /dev/sdc1 /mnt/boot

mkfs.ext4 /dev/sdc2
mkdir /mnt/root
mount /dev/sdc2 /mnt/root

bsdtar -xpf /home/hughie/Downloads/iso/ArchLinuxARM-rpi-aarch64-latest.tar.gz -C /mnt/root
sync
mv /mnt/root/boot/* /mnt/boot


# [pi hosted com](pi-hosted.com)

Use `raspi-config` to set a domain name.
eg. 'raspi'
Enable ssh.
From external machine:
ssh-copy-id hughie@raspi

wget -qO- https://raw.githubusercontent.com/pi-hosted/pi-hosted/master/install_docker.sh

nextcloudpi
user: ncp

..then:
