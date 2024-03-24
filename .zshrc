# alias
alias e='nvim'
alias g='git'
alias t='tmux'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -l --color=auto'

# completion
autoload -U compinit && compinit

# key binding
bindkey '\e[1;5C' forward-word
bindkey '\e[1;5D' backward-word

# option
setopt AUTO_CD
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
unsetopt BEEP
unsetopt FLOW_CONTROL

# fzf
. /usr/share/doc/fzf/examples/key-bindings.zsh

# keychain
keychain -q --nogui /mnt/c/Users/$USER/.ssh/id_rsa
. ~/.keychain/$(hostname)-sh

# mise
eval "$(mise activate zsh)"
eval "$(mise completion zsh)"

# sheldon
eval "$(sheldon source)"
eval "$(sheldon completions --shell zsh)"

# starship
eval "$(starship init zsh)"
eval "$(starship completions zsh)"
