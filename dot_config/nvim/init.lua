vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.go_disable_gohtmltmpl = 1

local o = vim.opt

o.listchars = { trail = '␣', tab = '>-', eol = '↵' }

o.rnu=true
o.nu=true
o.mouse='a'

o.tabstop=4
o.shiftwidth=4

o.ignorecase=true
o.smartcase=true

-- Lazy Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Imports
require('plugins')
require('mappings')
require('lsp-config')
require('cmp-config')
