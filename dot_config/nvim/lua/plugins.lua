local Plug = vim.fn['plug#']
local api = vim.api
local let = vim.g

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('fatih/vim-go', {['do'] = ':GoInstallBinaries', ['for'] = 'go' })
Plug('hashivim/vim-terraform')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/nvim-cmp')
Plug('iamcco/markdown-preview.nvim', { ['for'] = {'markdown', 'vim-plug'} })
Plug('kyazdani42/nvim-web-devicons')
Plug('L3MON4D3/LuaSnip')
Plug('mboughaba/i3config.vim')
Plug('mg979/vim-visual-multi')
Plug('morhetz/gruvbox')
Plug('nathom/filetype.nvim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.0'})
Plug('preservim/nerdtree')
Plug('saadparwaiz1/cmp_luasnip')
Plug('tpope/vim-commentary')
Plug('tpope/vim-fugitive')
Plug('tpope/vim-surround')
Plug('windwp/nvim-autopairs')
Plug('Xuyuanp/nerdtree-git-plugin')
Plug('yuttie/comfortable-motion.vim')

vim.call'plug#end'

-- Comfortable Motion
vim.g.comfortable_motion_no_default_key_mappings = 1
vim.g.comfortable_motion_friction=130.0
vim.g.comfortable_motion_air_drag=2.2

-- NERDTree

let.NERDTreeMinimalUI = 1
let.NERDTreeDirArrows = 1
let.NERDTreeQuitOnOpen = 1
let.NERDTreeAutoDeleteBuffer = 1

-- Open a Nerdtree when no args
api.nvim_create_autocmd('StdinReadPre', {
    command = 'let s:std_in=1'
})
api.nvim_create_autocmd('VimEnter', {
    command = 'if argc() == 0 && !exists("s:std_in") | NERDTree | endif'
})

require("nvim-autopairs").setup{}

