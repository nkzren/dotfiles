vim.g.mapleader = ","

local o = vim.opt

-- o.syntax='on'
o.rnu=true 
o.nu=true
o.mouse='a'

o.tabstop=4
o.shiftwidth=4
o.expandtab=true

o.ignorecase=true
o.smartcase=true

require('plugins')
require('mappings')
require('configs-lsp')

-- colorscheme gruvbox
-- hi Normal guibg=NONE ctermbg=NONE
vim.cmd('colorscheme gruvbox')
