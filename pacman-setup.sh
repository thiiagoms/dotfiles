#!/bin/bash

echo -e "[*] Update and install packages"
sudo pacman -Syyu vim git zsh docker yay docker-compose terminator virtualbox telegram-desktop discord dbeaver base-devel --noconfirm

echo -e "[*] Install VSCode"
yay -S visual-studio-code-bin

echo -e "[*] Enable docker service"
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

echo -e "[*] Reboot"
sudo reboot