#!/bin/sh

export EDITOR

if which nvim 2> /dev/null; then
    EDITOR=nvim
elif which vim 2> /dev/null; then
    EDITOR=vim
elif which vi 2> /dev/null; then
    EDITOR=vi
elif which nano 2> /dev/null; then
    EDITOR=nano
else
    echo "WARNING: \$EDITOR not set"
fi

return 0
