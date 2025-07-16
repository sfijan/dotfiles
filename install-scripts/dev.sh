#! /usr/bin/bash

yay -S --needed --noconfirm tldr clang stylua python-pynvim gopls

# docker
yay -S --needed --noconfirm docker docker-compose docker-buildx
sudo usermod --append --groups docker sven # TODO: change to current user
sudo systemctl enable --now docker
