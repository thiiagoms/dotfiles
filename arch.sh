#!/bin/bash

reset

RED="\e[31m"
GREEN="\e[32m"
WHITE="\e[97m"
ENDCOLOR="\e[0m"

echo -e "
${RED}
 █████╗ ██████╗  ██████╗██╗  ██╗
██╔══██╗██╔══██╗██╔════╝██║  ██║
███████║██████╔╝██║     ███████║
██╔══██║██╔══██╗██║     ██╔══██║
██║  ██║██║  ██║╚██████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
${ENDCOLOR}
${WHITE}
    [*] Author: Thiago Silva AKA thiiagoms
    [*] E-mail: thiagom.devsec@gmail.com
\n";

exit
echo -e "[*] Update System"
{
    sudo pacman -Syyu
} &> /dev/null

echo -e "[*] Installing packages"
{
    sudo pacman -S --noconfirm base base-devel linux-headers linux-firmware \
    xorg-server xorg-xinit xorg-xrandr xdg-user-dirs \
    docker docker-compose dunst git i3 i3blocks feh flameshot zsh \
    redshift rofi scrot thunar thunar-volman xclip \
    pulseaudio pulseaudio-alsa arandr bat wget curl \
    alacritty neofetch nitrogen vim ntfs-3g picom telegram-desktop \
    ttf-dejavu os-prober grub efibootmgr keepassxc
} &> /dev/null

echo -e "[*] Installing yay AUR"
{
    git clone https://aur.archlinux.org/yay.git
    cd  yay
    makepkg -si
    rm -rf yay
} &> /dev/null

echo -e "[*] Install AUR packages"
{
    yay -S numix-gtk-theme numix-circle-icon-theme-git visual-studio-code-bin  brave-bin --noconfirm
} &> /dev/null

echo -e "[*] Enable docker"
{
    sudo systemctl enable docker.service
    sudo usermod -aG docker $USER
} &> /dev/null

echo -e "[*] Configure dotfiles"
{
    curl -sS https://starship.rs/install.sh | sh
    chsh -s /bin/zsh
    cp -R config/alacritty $HOME/.config/
    cp -R config/i3        $HOME/.config/
    cp -R config/bat       $HOME/.config/
    cp -R config/picom     $HOME/.config/
    sh vscode/extensions.sh
    cp -R vscode/settings.json $HOME/.config/Code/User/
    cp config/starship.toml $HOME/.config
} &> /dev/null

echo -e "[*] Installing fonts (This may take a while)"
{
    git clone https://github.com/ryanoasis/nerd-fonts.git
    cd nerd-fonts
    ./install.sh
    fc-cache -vf $HOME/.local/share/fonts
} &> /dev/null
