#!/bin/sh

export EDITOR

if command -v nvim > /dev/null; then
    EDITOR="nvim"
elif command -v vim > /dev/null; then
    EDITOR="vim"
elif command -v vi > /dev/null; then
    EDITOR="vi"
elif command -v nano > /dev/null; then
    EDITOR="nano"
else
    echo "WARNING: \$EDITOR not set"
fi

return 0
