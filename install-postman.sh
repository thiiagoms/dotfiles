#!/usr/bin/env bash
mkdir -p $HOME/.local/share/applications
wget -O postman.tar.gz https://dl.pstmn.io/download/latest/linux64 
tar -xvf postman.tar.gz
sudo mv Postman /opt/Postman
rm postman.tar.gz 
sudo ln -sf /opt/Postman/Postman /usr/bin/postman
touch $HOME/.local/share/applications/postman.desktop
cat >> $HOME/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL