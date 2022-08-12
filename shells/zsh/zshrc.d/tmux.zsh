alias t='tmux attach || tmux new-session'

# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# Creates a new session
alias tn='tmux new-session'

# Lists all ongoing sessions
alias tl='tmux list-sessions'

function start_tmux() {
    if [ -x "$(command -v tmux)" ] && [ -x "$(command -v byobu)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
        byobu-tmux attach || byobu-tmux >/dev/null 2>&1
    fi
}
