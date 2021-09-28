# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

export DEFAULT_USER=LOGNAME

export ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time root_indicator)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="\uf155 "
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=white
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=steelblue
POWERLEVEL9K_DIR_ETC_FOREGROUND=white
POWERLEVEL9K_DIR_ETC_BACKGROUND=steelblue
POWERLEVEL9K_DIR_HOME_FOREGROUND=white
POWERLEVEL9K_DIR_HOME_BACKGROUND=steelblue
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=white
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=steelblue
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_NVM_FOREGROUND=black
POWERLEVEL9K_NVM_BACKGROUND=green
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=green
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=black
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=yellow
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=black
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=magenta
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=black
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=black
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=yellow

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colorize compleat cp dirpersist docker git httpie kubectl npm)

source $ZSH/oh-my-zsh.sh

source /usr/local/opt/nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  else
    nvm use stable
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct

function short_title {
    title $(basename `pwd`)
}
precmd_functions+=short_title
