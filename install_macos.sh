#!/bin/bash

function install_brew() {
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function install_oh_my_zsh() {
    # theme: afowler
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function change_default_theme() {
    # NOTE: backuped .zshrc will be saved in ~/.zshrc.bak
    sed -i.bak $'/^ZSH_THEME=/c\\\nZSH_THEME="afowler"\n' ~/.zshrc
}

function replace_theme_config() {
    truncate -s 0 ~/.oh-my-zsh/themes/afowler.zsh-theme
    cat theme/afowler.theme.cfg >> ~/.oh-my-zsh/themes/afowler.zsh-theme
}

function install_rectangle() {
    brew install --cask rectangle
}

function reduce_dock_appearing_time() {
    defaults write com.apple.dock autohide-delay -float 0; killall Dock
    # To revert: defaults delete com.apple.dock autohide-delay; killall Dock
}

install_brew
install_oh_my_zsh
reduce_dock_appearing_time
change_default_theme
replace_theme_config
