#!/bin/bash
set -eo pipefail

command -v yay && exit 0

tempd=$(mktemp --directory)
git clone https://aur.archlinux.org/yay.git "${tempd}"
pushd "${tempd}"
makepkg -si
popd
