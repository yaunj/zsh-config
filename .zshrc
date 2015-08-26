export HISTFILE=~/.zsh_history

# Include files
test -r ${HOME}/.env && source ${HOME}/.env
source $HOME/.zsh/config.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/completion.zsh

# Use command not found if installed
if [[ -f /etc/zsh_command_not_found ]]; then
    source /etc/zsh_command_not_found # installed in Ubuntu
fi
