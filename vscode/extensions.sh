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
    [*] Author: thiiagoms
    [*] E-mail: thiiagoms@proton.me
"

extensions=(
    adpyke.vscode-sql-formatter
    alexcvzz.vscode-sqlite
    alperenersoy.filament-snippets
    bmewburn.vscode-intelephense-client
    bwya77.islands-dark
    christian-kohler.path-intellisense
    cjhowe7.laravel-blade
    cweijan.dbclient-jdbc
    cweijan.vscode-database-client2
    davidanson.vscode-markdownlint
    dineug.vuerd-vscode
    docker.docker
    donjayamanne.githistory
    dotjoshjohnson.xml
    eamodio.gitlens
    ecmel.vscode-html-css
    esafirm.kotlin-formatter
    esbenp.prettier-vscode
    formulahendry.auto-close-tag
    formulahendry.auto-complete-tag
    formulahendry.auto-rename-tag
    formulahendry.code-runner
    fwcd.kotlin
    github.copilot-chat
    github.vscode-github-actions
    github.vscode-pull-request-github
    golang.go
    hollowtree.vue-snippets
    jaguadoromero.vscode-php-create-class
    marabesi.php-import-checker
    mathiasfrohlich.kotlin
    mechatroner.rainbow-csv
    mehedidracula.php-namespace-resolver
    mhutchie.git-graph
    miguelsolorio.fluent-icons
    mikestead.dotenv
    ms-azuretools.vscode-containers
    ms-azuretools.vscode-docker
    ms-dotnettools.csdevkit
    ms-dotnettools.csharp
    ms-dotnettools.vscode-dotnet-runtime
    ms-python.debugpy
    ms-python.python
    ms-python.vscode-pylance
    ms-python.vscode-python-envs
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode.makefile-tools
    ms-vscode.remote-explorer
    ms-vscode.vscode-typescript-next
    naumovs.color-highlight
    neilbrayfield.php-docblocker
    nucllear.vscode-extension-auto-import
    oderwat.indent-rainbow
    onecentlin.laravel-blade
    pnp.polacode
    redhat.java
    redhat.vscode-xml
    rifi2k.format-html-in-php
    ritwickdey.liveserver
    ryanluker.vscode-coverage-gutters
    shengchen.vscode-checkstyle
    shufo.vscode-blade-formatter
    sonarsource.sonarlint-vscode
    streetsidesoftware.code-spell-checker
    subframe7536.custom-ui-style
    talhabalaj.actual-font-changer
    tomoki1207.pdf
    vmware.vscode-spring-boot
    vscjava.migrate-java-to-azure
    vscjava.vscode-gradle
    vscjava.vscode-java-debug
    vscjava.vscode-java-dependency
    vscjava.vscode-java-pack
    vscjava.vscode-java-test
    vscjava.vscode-java-upgrade
    vscjava.vscode-lombok
    vscjava.vscode-maven
    vscjava.vscode-spring-boot-dashboard
    vscjava.vscode-spring-initializr
    vscode-icons-team.vscode-icons
    vue.volar
    wayou.vscode-todo-highlight
    whatwedo.twig
    wix.vscode-import-cost
    xdebug.php-debug
)

for extension in "${extensions[@]}"
do
    code --install-extension $extension
done