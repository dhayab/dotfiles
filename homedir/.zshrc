# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

export DEFAULT_USER=LOGNAME

# Force locale to be set in English
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir nvm vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time root_indicator)

# POWERLEVEL9K_NVM_FOREGROUND=black
# POWERLEVEL9K_NVM_BACKGROUND=green

# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=magenta
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=black
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=black
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=yellow

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Enable oh my posh prompt engine
eval "$(oh-my-posh init zsh --config $HOME/.dotfiles/configs/multiverse-neon.omp.json)"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(aws colorize compleat cp dirpersist docker git httpie npm yarn)

source $ZSH/oh-my-zsh.sh
autoload -U add-zsh-hook

# Customize to your needs...
unsetopt correct

function short_title {
    title $(basename `pwd`)
}
precmd_functions+=short_title

autoload -U compinit; compinit
source <(algolia completion zsh); compdef _algolia algolia
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

eval "$(mise activate zsh)"

# 1P CLI Plugins
source $HOME/.config/op/plugins.sh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/vault vault
