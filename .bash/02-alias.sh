#!/bin/bash

alias ls="ls --color"
alias l="ls --color"
alias reload='source ${HOME}/.bashrc'
alias vim=nvim

# source work-specific aliases we dont track in
# source control for privacy
if [[ -r "${HOME}/work/.aliases" ]]; then
  source "${HOME}/work/.aliases"
fi
