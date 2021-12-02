ln -s /data/appimages/ ./appimage
ln -s /data/bin/ ./bin
ln -s /data/BurpSuiteCommunity/ ./BurpSuiteCommunity
ln -s /data/code/ ./code
ln -s /data/crypt/ ./crypt
ln -s /data/docs/ ./docs
#ln -s /data/dotfiles/ ./dotfiles
rm -r ./Downloads
ln -s /data/Downloads/ ./Downloads
ln -s /data/gems/ ./gems
ln -s /data/tools/ ./tools
sudo mv /usr/bin/nvim /usr/bin/nvim.bk
sudo ln -s /data/tools/nvim-linux64/bin/nvim /usr/bin/nvim
ln -s /data/pix/ ./pix
ln -s /data/sites/ ./sites
ln -s /data/vids/ ./vids
ln -s /data/VirtualBox\ VMs/ ./VirtualBox\ VMs
