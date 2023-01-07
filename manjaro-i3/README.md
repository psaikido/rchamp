Put the manjaro-i3 iso on a usb and boot.  
Currently manjaro-i3-21.3.7-220817-linux515.iso  

`sudo pamac install \
alacritty \
exa \
feh \
neovim \
pipewire \
pipewire-alsa \
rofi \
tmux \
xcape`
`
yay -S \
brave-beta-bin \
mutt-wizard \
twmn-git`

From ~/dotfiles/manjaro/
.bashrc 
.profile
 
Tweak ~/.i3/config
`set $mod Mod1
bindsym $mod+Return exec alacritty
bindsym $mod+F2 exec brave
bindsym $mod+F3 exec ranger

# Do a background alias so we can have a random background on each workspace.
set $dofeh exec --no-startup-id feh --bg-scale 

# switch to workspace
bindsym $mod+1 workspace $ws1; $dofeh ~/wallpapers/0002.jpg
bindsym $mod+2 workspace $ws2; $dofeh ~/wallpapers/0005.jpg
bindsym $mod+3 workspace $ws3; $dofeh ~/wallpapers/0010.jpg
bindsym $mod+4 workspace $ws4; $dofeh ~/wallpapers/0016.jpg
bindsym $mod+5 workspace $ws5; $dofeh ~/wallpapers/0018.jpg
bindsym $mod+6 workspace $ws6; $dofeh ~/wallpapers/0023.jpg
bindsym $mod+7 workspace $ws7; $dofeh ~/Documents/club38/sundry/images/theDowns-Hughku-Gucci.png
bindsym $mod+8 workspace $ws8; $dofeh --randomize ~/wallpapers/

bindsym $mod+o exec rofi -show drun
bindsym $mod+p exec rofi -show run
bindsym $mod+Tab exec rofi -show window
bindsym Ctrl+Shift+b exec ~/bin/bookmarks `


Copy from ~/dotfiles to .config  
alacritty
mutt
nvim
pipewire
ranger
rofi
tmux
twmn

Copy from a previous archinstall to ~
.abook
.gnupg
.password-store
.ssh
.tmux

