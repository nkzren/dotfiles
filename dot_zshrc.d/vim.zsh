if [ ! -z $(command -v nvim) ]; then
    alias vim='nvim'
    alias vi='nvim'
fi

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
