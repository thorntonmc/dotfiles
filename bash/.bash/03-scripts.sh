#!/bin/bash

op-login() {
    if op account get &> /dev/null; then
        echo "you are already logged in."
        return
    fi

    if [[ ! -f "${HOME}/1pw" ]]; then
        echo "1pw login not found in ${HOME}/1pw"
    fi

    signIn="$(op signin -f < "${HOME}/1pw")" || return 1
    eval "${signIn}" || return 1
    echo "logged in to op"
}

op-get-pw() {
    [[ -z "${1}" ]] && echo no args provided && return 1
    item=$(op item get "${1}" --format=json) || return 1

    jq '.fields[0].value, .fields[1].value' <<< "${item}"
    return 0
}

op-get-ba() {
    op-login && op-get-pw ba
}
