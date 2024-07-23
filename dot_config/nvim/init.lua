vim.cmd.colorscheme 'desert'

vim.g.mapleader=' '
vim.g.maplocalleader=' '

local o = vim.opt

o.wrap=false

-- better search with / and ?
o.ignorecase=true
o.smartcase=true

-- line numbers
o.nu=true
o.rnu=false

-- Tab options
o.tabstop=4
o.shiftwidth=0
o.softtabstop=-1
o.expandtab=false

-- Lazy Setup
require('config.lazy')

-- Custom configs
require('config.lsp')
require('config.mappings')
