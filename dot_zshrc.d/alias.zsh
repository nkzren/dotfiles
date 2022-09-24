alias dotfiles="~/Documents/dev/dotfiles"
alias zshrc="vi ~/.zshrc"

# Docker
if [ ! -z $(command -v docker) ]; then
    alias d=docker
    alias dc=docker-compose
fi

# Kubernetes related aliases
if [ ! -z $(command -v kubectl) ]; then
    alias k=kubectl 
    alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
    alias kccd='kubectl config use-context '
    alias kcgc='kubectl config get-contexts'

    if [ ! -z $(command -v nvim) ]; then
        export KUBE_EDITOR='nvim'
    fi
fi

# TMUX
if [ ! -z $(command -v tmux) ]; then
    alias t='tmux attach || tmux new-session'

    # Attaches tmux to a session (example: ta portal)
    alias ta='tmux attach -t'

    # Creates a new session
    alias tn='tmux new-session'

    # Lists all ongoing sessions
    alias tl='tmux list-sessions'
fi

if [ ! -z $(command -v helm) ]; then
    source $UTIL_SCRIPTS_DIR/helm-completion.sh
fi
