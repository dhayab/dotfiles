fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# brew: gnu-sed + grep
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/grep/libexec/gnubin:$PATH
