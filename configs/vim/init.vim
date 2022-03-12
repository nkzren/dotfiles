call plug#begin()

Plug 'yuttie/comfortable-motion.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
set rnu nu
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

let g:comfortable_motion_friction=130.0
let g:comfortable_motion_air_drag=2.2

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

" Nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Open a NerdTree if no file is given as CLI argument
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close if the only remaining window is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-a> :NERDTreeToggle<CR>
