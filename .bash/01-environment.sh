#!/bin/bash

export GPG_TTY
export SSH_AUTH_SOCK
export ALACRITTY_BASEDIR
export ALACRITTY_CONFIG
export ALACRITTY_THEMES
export KUBE_CONFIG_DIR="${HOME}/.kube"

PS1='\[\e[0;1;32m\]\u\[\e[0;1;32m\]@\[\e[0;1;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w \[\e[0;93m\]$(__git_ps1 "[%s]")\n\[\e[0;32m\]\$ \[\e[0m\]'
GPG_TTY=$(tty)

PATH="${PATH}:${HOME}/go/bin"
PATH="${PATH}:${HOME}/.local/bin"

ALACRITTY_BASEDIR="${HOME}/.config/alacritty"
ALACRITTY_CONFIG="${ALACRITTY_BASEDIR}/alacritty.yml"
ALACRITTY_THEMES="${ALACRITTY_BASEDIR}/themes"
