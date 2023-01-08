Put the endeavouros iso on a usb and boot.  
In the calamares installer I chose i3.

`sudo pacman -S \
alacritty \
bat \
exa \
feh \
neovim \
python-pip \
tmux \
xcape \
xsel`
`
yay -S \
brave-beta-bin \
mutt-wizard \
pynvim \
twmn-git \
ueberzug` 

From ~/dotfiles/eos/dot-root
ln dotfiles to ~
 
Tweak ~/.i3/config
`# Do a background alias so we can have a random background on each workspace.
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

bindsym Ctrl+Shift+b exec ~/bin/bookmarks `

Copy from a backup archinstall to ~
.abook
.gnupg
.password-store
.ssh
.tmux

