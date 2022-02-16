call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuttie/comfortable-motion.vim'
Plug 'mg979/vim-visual-multi'

call plug#end()

syntax on
set rnu nu

set tabstop=4
set shiftwidth=4
set expandtab

let g:comfortable_motion_friction=130.0
let g:comfortable_motion_air_drag=2.2
