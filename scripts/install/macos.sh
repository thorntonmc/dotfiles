#!/bin/bash

check_brew() {
    brew -v &>/dev/null

    if [ ! $? == 0 ]; then
        echo "brew must be installed"
        exit1
    fi
}

install() {
    check_brew # brew must be installed
    echo install complete
}

install
