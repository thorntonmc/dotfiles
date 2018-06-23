alias cls='clear'
alias lsla='ls -la | sort -d'
alias lsl='ls -l | sort -d'
alias d='date+%D'
alias l='ls -CFG'
alias la='ls -AG'
alias ll='ls -alFG'

PS1='\[\e[1;31m\]\u\[\e[m\]\[\e[1;35m\]@\[\e[m\]\[\e[1;34m\]\h \W\[\e[m '


if [[ $(uname) == 'Linux' ]]; then
    LS_COLORS='di=36:fi=0:ln=31:ex=35'
    export LS_COLORS
    alias ls='ls --color'
elif [[ $(uname) == 'Darwin' ]]; then 
    export LSCOLORS=GxFxCxDxBxegedabagaced
    export CLICOLOR=1
fi
