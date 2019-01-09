source ~/.bash_aliases

export PS1="\[\033[36m\]\u\[\033[m\]\[\033[33;1m\] \W\[\033[m\] "

if [[ $(uname) == 'Linux' ]]; then
    LS_COLORS='di=36:fi=0:ln=31:ex=35'
    export LS_COLORS
    alias ls='ls --color'
elif [[ $(uname) == 'Darwin' ]]; then 
    export LSCOLORS=ExFxBxDxCxegedabagacad
    export CLICOLOR=1
fi
