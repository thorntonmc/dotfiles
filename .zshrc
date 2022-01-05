##################
#### PROMPT ######
##################
autoload -Uz vcs_info
precmd() { vcs_info }
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats '[%b]'

PROMPT='%B%F{10}%n%f%b%B%F{10}@%f%b%B%F{10}%m%f%b%B%F{white}:%f%b%F{12}%~%f %F{yellow}${vcs_info_msg_0_}%f
%F{10}$%f ' 

################
##### SSH  #####
################
ssh-add

################
##### PATH #####
################
# Pyhon
export PATH=$PATH:/Users/michaelthornton/Library/Python/3.8/bin
# Ruby
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
# jeykll ruby setting
export SDKROOT=$(xcrun --show-sdk-path)
# ruby gem bin
export PATH="$HOME/.gem/ruby/3.3.0/bin:$PATH"
# jekyll hack
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"


# GO
export GOPATH=$HOME/go
export PATH=$PATH:~/go/bin

#GPG
export GPG_TTY=$(tty)

###############
##  ALIASES  ##

alias tmux='tmux -2'
alias ls="ls -G"

###############
##   iterm   ##
###############
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
