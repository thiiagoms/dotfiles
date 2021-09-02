#!/bin/bash 

echo -e "[*] Install vscode extensions \n"

code --install-extension bmewburn.vscode-intelephense-client 
code --install-extension ms-python.python
code --install-extension ms-azuretools.vscode-docker
code --install-extension eamodio.gitlens
code --install-extension pkief.material-icon-theme
code --install-extension zhuangtongfa.material-theme
code --install-extension coenraads.bracket-pair-colorizer
code --install-extension oderwat.indent-rainbow
code --install-extension mikestead.dotenv

# Disable default php extension to use intelephense
code --disable-extension vscode.php-language-features