#!/bin/bash

if [[ $(uname) == 'Darwin' ]]; then
    sh install_macos.sh
#elif [[ $(uname) == 'Linux' ]]; then    
fi

cat PS1 >> ~/.bash_profile