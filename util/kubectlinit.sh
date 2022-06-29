# Kubernetes related aliases

alias k=kubectl 
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
alias kccd='kubectl config use-context '
alias kcgc='kubectl config get-contexts'

if [ ! -z $(command -v nvim) ]; then
    export KUBE_EDITOR='nvim'
fi
