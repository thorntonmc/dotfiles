#!/bin/bash

if [ -z "$MAIN_DIR" ]; then
    echo "root dir not set"
    exit 1
fi

pushd $MAIN_DIR > /dev/null
stow -t "$HOME/.local" .local
stow -t $HOME zsh
stow -t $HOME bash
popd > /dev/null
