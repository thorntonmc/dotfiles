#!/bin/bash

export GPG_TTY
export SSH_AUTH_SOCK

SSH_AUTH_SOCK=~/.1password/agent.sock

PS1='\[\e[0;1;32m\]\u\[\e[0;1;32m\]@\[\e[0;1;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w \[\e[0;93m\]$(__git_ps1 "[%s]")\n\[\e[0;32m\]\$ \[\e[0m\]'
GPG_TTY=$(tty)
