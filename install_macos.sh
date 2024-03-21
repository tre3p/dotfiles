#!/bin/bash

function install_brew() {
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function install_karabiner() {
    brew install --cask karabiner-elements
}

function install_oh_my_zsh() {
    # theme: afowler
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function copy_karabiner_configs() {
    cp karabiner/karabiner.json ~/.config/karabiner/
}

function install_rectangle() {
    brew install --cask rectangle
}

function reduce_dock_appearing_time() {
    defaults write com.apple.dock autohide-delay -float 0; killall Dock
    # To revert: defaults delete com.apple.dock autohide-delay; killall Dock
}

install_brew
install_karabiner
install_oh_my_zsh
copy_karabiner_configs
reduce_dock_appearing_time