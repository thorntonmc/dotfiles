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

#GPG
export GPG_TTY=$(tty)

###############
##   iterm   ##
###############
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias vim=nvim

# Source custom zsh files
for config ($HOME/.zsh/*.zsh) source $config

