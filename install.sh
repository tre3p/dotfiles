#!/bin/bash

function change_PS1() {
    cat PS1 >> ~/.bash_profile
}

function install_sdkman() {
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
}

if [[ $(uname) == 'Darwin' ]]; then
    sh install_macos.sh
#elif [[ $(uname) == 'Linux' ]]; then    
fi