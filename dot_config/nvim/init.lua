vim.g.mapleader = " "
vim.g.maplocalleader = " "

local o = vim.opt

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- o.syntax='on'
o.rnu=true 
o.nu=true
o.mouse='a'

o.tabstop=4
o.shiftwidth=4
-- o.colorcolumn="81"

o.ignorecase=true
o.smartcase=true

require('plugins')
require('mappings')
require('configs-lsp')
require('line')

-- colorscheme gruvbox
-- hi Normal guibg=NONE ctermbg=NONE
vim.cmd('colorscheme gruvbox')
