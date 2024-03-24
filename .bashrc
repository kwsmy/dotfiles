# alias
alias e='vim'
alias t='tmux'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -l --color=auto'

# completion
. /etc/bash_completion

# option
shopt -s autocd

# tty
stty -ixon
