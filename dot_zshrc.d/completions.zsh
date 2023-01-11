# Kube
complete -F __start_kubectl k
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
[[ $commands[helm] ]] && source <(helm completion zsh)
[[ $commands[bw] ]] && eval "$(bw completion --shell zsh); compdef _bw bw;"
