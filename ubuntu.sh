#!/bin/bash

echo -e "[*] Add respositories: Git core, Openrazer. Polychromatic\n"
sudo add-apt-repository ppa:git-core/ppa -y 
sudo add-apt-repository ppa:openrazer/stable -y
sudo add-apt-repository ppa:polychromatic/stable -y

echo -e "[*] Setup vscode \n"
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
sudo dpkg -i vscode.deb

echo -e "[*] Setup discord \n"
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb

echo -e "[*] Install DBeaver \n"
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb -O dbeaver.deb
sudo dpkg -i dbeaver.deb

echo -e "[*] Update and upgrade packages \n" 
sudo apt install -f -y && sudo apt --fix-broken install -y && sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt install -f -y && sudo apt --fix-broken install -y 

echo -e "[*] Install tools: Docker, Git, Razer, VSCode \n"
sudo apt install docker docker-compose git vim openrazer-meta polychromatic terminator telegram-desktop ubuntu-restricted-extras software-properties-common apt-transport-https zsh bat pipenv curl flameshot virtualbox -y 

echo -e "[*] Add user to docker "
sudo usermod -aG docker $USER

echo -e "[*] Add user to plugdev"
sudo gpasswd -a $USER plugdev 

echo -e "[*] Change to zsh"
chsh -s /bin/zsh

echo -e "[*] Change to zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

echo -e "[*] Install zsh plugins"
git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 && 
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo -e "[*] Move zsh config"
cp zshrc ~/.zshrc

echo -e "[*] Clean"
rm -rf *.deb

echo -e "[*] Install fonts"
mkdir -p $HOME/.local/share &&
cp -r .fonts ~/.local/share/fonts &&
fc-cache -vf ~/.local/share/fonts 

echo -e "[*] Install vscode extensions"
cp vscode/settings.json $HOME/.config/Code/User/settings.json &&
cp -r common/terminator $HOME/.config &&
sudo sh common/install-postman.sh &&
sudo sh common/code-extensions.sh

echo -e "[*] reboot"
sudo reboot