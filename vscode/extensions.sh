#!/bin/bash
reset

RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
BLACK="\e[30m"
YELLOW="\e[33m"
GRAY="\e[36m"
WHITE="\e[97m"
ENDCOLOR="\e[0m"

echo -e "
${RED}
██    ██ ███████  ██████  ██████  ██████  ███████ 
██    ██ ██      ██      ██    ██ ██   ██ ██      
██    ██ ███████ ██      ██    ██ ██   ██ █████   
 ██  ██       ██ ██      ██    ██ ██   ██ ██      
  ████   ███████  ██████  ██████  ██████  ███████ 
${ENDCOLOR}
    [*] Author: Thiago Silva AKA thiiagoms
    [*] E-mail: thiagom.devsec@gmail.com
"

extensions=(
    adpyke.codesnap
    alefragnani.project-manager
    amiralizadeh9480.laravel-extra-intellisense
    bmewburn.vscode-intelephense-client
    bradlc.vscode-tailwindcss
    brapifra.phpserver
    cjhowe7.laravel-blade
    codingyu.laravel-goto-view
    donjayamanne.githistory
    eamodio.gitlens
    EditorConfig.EditorConfig
    evan-buss.font-switcher
    formulahendry.auto-close-tag
    formulahendry.auto-rename-tag
    GitHub.vscode-pull-request-github
    glitchbl.laravel-create-view
    hbenl.vscode-test-explorer
    IHunte.laravel-blade-wrapper
    ii3i.min
    junstyle.php-cs-fixer
    liamhammett.inline-parameters
    m1guelpf.better-pest
    marabesi.php-import-checker
    MehediDracula.php-namespace-resolver
    miguelsolorio.fluent-icons
    mikestead.dotenv
    ms-azuretools.vscode-docker
    ms-kubernetes-tools.vscode-kubernetes-tools
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
    ms-vscode-remote.remote-containers
    ms-vscode.test-adapter-converter
    ms-vscode.vscode-typescript-next
    naoray.laravel-goto-components
    neilbrayfield.php-docblocker
    oderwat.indent-rainbow
    onecentlin.laravel-blade
    onecentlin.laravel5-snippets
    patbenatar.advanced-new-file
    rangav.vscode-thunder-client
    redhat.vscode-yaml
    rifi2k.format-html-in-php
    ryannaddy.laravel-artisan
    shufo.vscode-blade-formatter
    sleistner.vscode-fileutils
    streetsidesoftware.code-spell-checker
    Tyriar.lorem-ipsum
    vscode-icons-team.vscode-icons
    wraith13.file-path-bar
)

for extension in "${extensions[@]}"
do
    code --install-extension $extension
done