#!/bin/bash

if [ -z "$MAIN_DIR" ]; then
    echo "root dir not set"
    exit 1
fi

pushd $MAIN_DIR
stow -t $HOME zsh
popd
