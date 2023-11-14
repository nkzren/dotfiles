alias zshrc="c edit ~/.zshrc || vim ~/.zshrc"
alias ftconfig="c edit ~/.config/nvim/filetype.lua || vim ~/.config/nvim/filetype.lua"
alias i3config="c edit ~/.i3/config || vim ~/.i3/config"
alias aliasconfig="c edit ~/.zshrc.d/alias.zsh"

# Docker
alias d=docker
alias dc='docker compose'
alias drmti='docker run --rm -ti'

# cd recursion
alias u="cd ../"
alias uu="cd ../../"
alias uuu="cd ../../../"
alias uuuu="cd ../../../../"
alias uuuuu="cd ../../../../../"

# Kubernetes related aliases
alias k=kubectl 
alias kn='kubectl config set-context --current --namespace '
alias kx='kubectl config use-context '
alias kcgc='kubectl config get-contexts'

# TF-related
alias tf=terraform
alias tg=terragrunt

if [ ! -z $(command -v nvim) ] && [ ! -z $(command -v kubectl) ]; then
    export KUBE_EDITOR='nvim'
fi

# TMUX
alias t='byobu-tmux attach || byobu-tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='byobu-tmux attach -t'

# Creates a new session
alias tn='byobu-tmux new-session'

# Lists all ongoing sessions
alias tl='byobu-tmux list-sessions'

alias c=chezmoi

if [ ! -z $(command -v nvim) ]; then
    alias vim='nvim'
    alias vi='nvim'
fi

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias kbd='~/.i3/i3-keyboard-layout'

alias gcnoci='git commit -t ~/.git/templates/skip-ci'
alias fizmerda='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'

alias notes='cd ~/tenjin'

