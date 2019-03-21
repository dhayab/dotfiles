# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

export DEFAULT_USER=LOGNAME

export ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status context dir node_version vcs)
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
POWERLEVEL9K_NODE_VERSION_FOREGROUND=black
POWERLEVEL9K_NODE_VERSION_BACKGROUND=green
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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR=$HOME/.nvm
source /usr/local/opt/nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    nvm use default &> /dev/null
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

# Use Mac OS Preview to open a man page in a more handsome format
function manp() {
  man -t $1 | open -f -a /Applications/Preview.app
}

man() {
  env \
    LESS_TERMCAP_md=$'\e[1;36m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;40;92m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;32m' \
      man "$@"
}

# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ls='ls -G -h -p '
alias ll='ls -l -G -h -p '

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Flush the DNS on Mac
alias dnsflush='dscacheutil -flushcache'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias iplocal="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
