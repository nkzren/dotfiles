vim.cmd 'colorscheme desert'

vim.g.mapleader=' '
vim.g.maplocalleader=' '

local o = vim.opt

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

-- Easier clipboard
local map = vim.api.nvim_set_keymap
local map_opts = { noremap=true, silent=true }

map('n', '<leader>y', '"+y', map_opts)
map('v', '<leader>y', '"+y', map_opts)

map('n', '<leader>p', '"+p', map_opts)
map('n', '<leader>P', '"+P', map_opts)
map('v', '<leader>p', '"+p', map_opts)

