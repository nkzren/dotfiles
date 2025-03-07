alias zshrc="c edit ~/.zshrc || vim ~/.zshrc"
alias ftconfig="c edit ~/.config/nvim/filetype.lua || vim ~/.config/nvim/filetype.lua"
alias i3config="c edit ~/.config/i3/config || vim ~/config/.i3/config"
alias swayconfig="c edit ~/.sway/config || vim ~/.sway/config"
alias aliasconfig="c edit $ZSH_CUSTOM/alias.zsh"
alias nvimconfig="c edit ~/.config/nvim"

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

# iac-related
alias tf=terraform
alias tg=terragrunt

alias p=pulumi 

# TMUX
alias td='tmux detach'

alias c=chezmoi
alias ca='chezmoi apply'

if [ ! -z $(command -v nvim) ]; then
	alias vim='nvim'
	alias vi='nvim'
	export KUBE_EDITOR='nvim'
fi

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

alias gcnoci='git commit -t ~/.git/templates/skip-ci'
alias fizmerda='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
alias cdclip='cd $(clippaste)'

alias notes="cd ~/tenjin && $EDITOR"
alias nvimdiff='nvim -d'

alias vpn='~/.scripts/vpn.sh'
