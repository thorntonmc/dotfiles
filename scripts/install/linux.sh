#!/bin/bash

# only supports ubuntu right now, needs to hit right make target for each
# supported distro

install_ansible() {
    if [ -x "$(command -v ansible-playbook)" ]; then
        echo "ansible already installed"
        return
    fi
    echo "ansible not installed, installing"
    if [ $PACKAGE_MGR == "APT" ]; then
        apt install ansible
        return
    fi
    
    if [ $PACKAGE_MGR == "PACMAN" ]; then
       echo here
       yes | pacman -S ansible
       return
    fi
}
install() {
    install_ansible
    if [ $PACKAGE_MGR == "APT" ]; then
        make -C $MAIN_DIR ubuntu-dev-machine
        return
    fi
    if [ $PACKAGE_MGR == "PACMAN" ]; then
       make -C $MAIN_DIR arch-dev-machine
       return
    fi
}

install
