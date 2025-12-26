#! /usr/bin/bash
home=/home/$USER

sudo pacman -S --needed --noconfirm git base-devel stow

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# install dofiles configs
rm -rf ~/.config/{fish, git, hypr, kitty, nvim, tmux, waybar}
stow --dotfiles --target=$home/ fish git hyprland kitty nvim tmux waybar 

# install packages
yay -S --needed --noconfirm nvim kitty fish yazi exa waybar hyprlock hyprshot pavucontrol fzf power-profiles-daemon light uwsm backlight_control rsync downgrade clipse
yay -S --needed --noconfirm ttf-adobe-source-code-pro-fonts

# fish
chsh --shell /usr/bin/fish
yay -S --needed --noconfirm fisher
fisher install PatrickF1/fzf.fish
mkdir $home/bin/
ln -s $(pwd)/scripts/tmux-session-dispensary.sh $home/bin/tsd

# tmux
yay -S --needed --noconfirm tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# bluetooth
yay -S --needed --noconfirm bluez bluetoothd bluez-utils
systemctl enable bluetooth.service

# bluetoothctl
# power on
# agent on
# default-agent
# scan on
# trust <address>
# pair <address>
# connect <address>
