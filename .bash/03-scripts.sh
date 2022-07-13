#!/bin/bash

function tc() {
local theme
echo "${ALACRITTY_THEMES}"
theme=$(fd . "${ALACRITTY_THEMES:?}" | fzf)
theme=$(basename "${theme}")

echo my theme $theme

alacritty-colorscheme -V\
    -c "${ALACRITTY_CONFIG:?}"\
    -C "${ALACRITTY_THEMES}"\
    apply "${theme}"
}
