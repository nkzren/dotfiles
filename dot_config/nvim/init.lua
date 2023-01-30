vim.g.mapleader = ","

local o = vim.opt

-- o.syntax='on'
o.rnu=true 
o.nu=true
o.mouse='a'

o.tabstop=4
o.shiftwidth=4
o.textwidth=80
o.colorcolumn="81"

o.ignorecase=true
o.smartcase=true

require('plugins')
require('mappings')
require('configs-lsp')
require('filetypes')
require('line')

-- colorscheme gruvbox
-- hi Normal guibg=NONE ctermbg=NONE
vim.cmd('colorscheme gruvbox')
