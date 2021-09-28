call plug#begin()

Plug 'yuttie/comfortable-motion.vim'
Plug 'mg979/vim-visual-multi'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
set rnu nu
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

let g:comfortable_motion_friction=130.0
let g:comfortable_motion_air_drag=2.2

colorscheme gruvbox
