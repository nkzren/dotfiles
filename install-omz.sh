#!/bin/bash
TMPDIR=/tmp
curl -s -L -o ${TMPDIR}/oh-my-zsh-master.tar.gz https://github.com/ohmyzsh/ohmyzsh/archive/master.tar.gz
mkdir -p $(chezmoi source-path)/dot_oh-my-zsh/custom/themes
mkdir -p $(chezmoi source-path)/dot_oh-my-zsh/custom/plugins/example
chezmoi import --strip-components 1 --destination ~/.oh-my-zsh ${TMPDIR}/oh-my-zsh-master.tar.gz
