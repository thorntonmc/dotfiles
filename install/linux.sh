#!/bin/bash

function install-ansible() {
    if [ -x "$(command -v ansible-playbook)" ]; then
        echo "ansible already installed"
        return
    fi
    echo "ansible not installed, installing"
    if [ "$PACKAGE_MGR" == "APT" ]; then
        apt install ansible
        return
    fi
    
    if [ "$PACKAGE_MGR" == "PACMAN" ]; then
       echo here
       yes | pacman -S ansible
       return
    fi
}

function dev-machine() {
    if  [ -z "$PACKAGE_MGR" ]; then
        echo "package manager not found, skipping dev-machine"
        return
    fi

    if [ "$PACKAGE_MGR" == "APT" ]; then
        make -C "$MAIN_DIR" ubuntu-dev-machine
    elif [ "$PACKAGE_MGR" == "PACMAN" ]; then
       make -C "$MAIN_DIR" arch-dev-machine
    else 
        echo "$PACKAGE_MGR not supported"
    fi

    return
}

function stow() {
    ./stow.sh
}

function install() {
    install-ansible
    dev-machine
    stow
}

install
