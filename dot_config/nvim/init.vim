call plug#begin()

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go' }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'iamcco/markdown-preview.nvim', { 'for': ['markdown', 'vim-plug'] }
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'mg979/vim-visual-multi'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'

call plug#end()

let mapleader = ","
syntax on
set rnu nu
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

" Comfortable Motion

let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_friction=130.0
let g:comfortable_motion_air_drag=2.2

nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

" END Comfortable Motion

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

" START Nerdtree
nnoremap <silent> <C-a> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Open a NerdTree if no file is given as CLI argument
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close if the only remaining window is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" END Nerdtree

" START navigation
noremap <silent> <M-1> :tabp<CR>
noremap <silent> <M-2> :tabn<CR>
noremap <silent> <leader>j :bn<CR>
noremap <silent> <leader>k :bN<CR>
noremap <M-j> <C-W>j
noremap <M-k> <C-W>k
noremap <M-h> <C-W>h
noremap <M-l> <C-W>l

let g:ctrlp_map = '<C-f>'
" END navigation

noremap yY "+yy
vnoremap <C-y> "+y

" comments
nmap <C-_> gcc
vmap <C-_> gc

" Coc
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
