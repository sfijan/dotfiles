#! /usr/bin/bash

sudo pacman -S --needed --noconfirm git base-devel stow

# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S --needed --noconfirm nvim kitty fish yazi exa tmux waybar hyprlock hyprshot pavucontrol fzf
yay -S --needed --noconfirm ttf-adobe-source-code-pro-fonts

stow --dotfiles --target=/home/$USER/ fish git hyprland kitty nvim tmux waybar 

# fish
chsh --shell /usr/bin/fish
yay -S --needed --noconfirm fisher
fisher install PatrickF1/fzf.fish
