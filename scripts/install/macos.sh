#!/bin/bash

check_brew() {
    brew -v &>/dev/null

    if [ ! $? == 0 ]; then
        echo "brew must be installed"
        exit 1
    fi
}

install_ansible() {
    if [ -x "$(command -v ansible)" ]; then
        echo "ansible already installed"
        return
    fi

    echo "ansible not installed, installing"
    brew install ansible
    ansible-galaxy collection install community.general
}

install() {
    check_brew # brew must be installed
    install_ansible
    echo install complete
}

install
