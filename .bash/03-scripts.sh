#!/bin/bash

function tc() {
  local theme
  local current=$(alacritty-colorscheme status)
  theme=$(fd . "${ALACRITTY_THEMES:?}" | fzf --preview 'cat {1} && alacritty-colorscheme -V -c "${ALACRITTY_CONFIG:?}" -C "${ALACRITTY_THEMES}" apply {1}')
  [[ -z "${theme}" ]] && return 1
  theme=$(basename "${theme}")
  echo theme is $theme

  alacritty-colorscheme -V -c "${ALACRITTY_CONFIG:?}" \
    -C "${ALACRITTY_THEMES}" \
    apply "${theme}"
}
