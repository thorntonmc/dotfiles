source $HOME/.local/scripts/git-prompt.sh
PS1='\[\e[0;1;32m\]\u\[\e[0;1;32m\]@\[\e[0;1;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w \[\e[0;93m\]$(__git_ps1 "[%s]")\n\[\e[0;32m\]\$ \[\e[0m\]'

source $HOME/.local/scripts/ssh-agent-check.sh

export GPG_TTY=$(tty)
if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi

