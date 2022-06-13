#!/bin/bash

for config in "${HOME}"/.bash/*; do
    baseName="$(basename "${config}" .sh)"
    friendlyName="$(sed -r 's/[0-9-]/ /g' <<< "${baseName}" |  tr -d ' ')"
    aliasName="bash-${friendlyName}"

    alias "${aliasName}"='$EDITOR ${config}'
done
