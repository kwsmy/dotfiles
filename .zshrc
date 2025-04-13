HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

alias cat='bat'
alias cd='z'
alias diff='delta'
alias find='fd'
alias grep='rg'
alias ls='eza'
alias man='tldr'

autoload -U compinit
compinit

bindkey -e
bindkey '\e[Z' reverse-menu-complete

declare -U path
path+=(~/.local/bin)

export EDITOR=vim

setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
unsetopt BEEP
unsetopt FLOW_CONTROL

source <(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
source <(fzf --zsh)
source <(mise activate zsh)
source <(sheldon source)
source <(starship init zsh)
source <(zoxide init zsh)
