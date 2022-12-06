#!/bin/bash

alias ls="ls --color"
alias l="ls --color"
alias reload='source ${HOME}/.bashrc'
alias docker=podman
alias ssh='TERM=xterm-256color ssh'

# source work-specific aliases we dont track in
# source control for privacy
if [[ -r "${HOME}/work/.aliases" ]]; then
  source "${HOME}/work/.aliases"
fi
