##################
#### PROMPT ######
##################
autoload -Uz vcs_info
precmd() { vcs_info }
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats '[%b]'

PROMPT='%B%F{green}%n%f%b%B%F{green}@%f%b%B%F{green}%m%f%b%B%F{white}:%f%b%F{blue}%~%f %F{yellow}${vcs_info_msg_0_}%f
%F{10}$%f ' 

################
##### SSH  #####
################
#GPG
export GPG_TTY=$(tty)

###############
##   iterm   ##
###############
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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

# Source custom zsh files
for config ($HOME/.zsh/*.zsh) source $config
