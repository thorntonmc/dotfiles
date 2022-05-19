op-login() {
    if [ $(op account get 2>/dev/null) ]; then
        echo "you are already logged in."
        return
    fi

    if [ ! -f $HOME/1pw ]; then
        echo "1pw login not found in $HOME/1pw"
    fi

    eval $(cat $HOME/1pw | op signin | cat)
    echo "logged in to op"
}

op-get-pw() {
    [ -z $1 ] && echo no args provided && return

    op item get $1 --format=json | jq '.fields[0].value, .fields[1].value'
    return
}
