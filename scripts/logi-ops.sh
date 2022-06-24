#!/bin/bash
set -eo pipefail 

function main() {
    local tmpdir

    tmpdir=$(mktemp --directory)
    trap 'rm -rf ${tmpdir}' EXIT
    git clone https://github.com/PixlOne/logiops "${tmpdir}"
    pushd "${tmpdir}"
    mkdir build
    pushd build
    cmake ..
    make
    sudo make install
    sudo systemctl enable --now logid

}

main


