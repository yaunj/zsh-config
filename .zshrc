# source environment vars
test -r ${HOME}/.env && source ${HOME}/.env

export HISTFILE=${ZDOTDIR:-${HOME}}/.zsh_history
export EDITOR=${EDITOR:-vim}
export VISUAL=${VISUAL:-vim}

if [[ -f ~/.profile ]]; then
    emulate sh -c '. ~/.profile'
fi

# Include files
source ${ZDOTDIR:-${HOME}}/.zsh/config.zsh
source ${ZDOTDIR:-${HOME}}/.zsh/aliases.zsh
source ${ZDOTDIR:-${HOME}}/.zsh/completion.zsh

# Use command not found if installed
if [[ -f /etc/zsh_command_not_found ]]; then
    source /etc/zsh_command_not_found # installed in Ubuntu
fi
