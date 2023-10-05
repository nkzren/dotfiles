require('lazy').setup({
  require 'plugins/core',
  require 'plugins/nerdtree',
  require 'plugins/appearance',
  require 'plugins/treesitter',
  require 'plugins/completions',

  { 'iamcco/markdown-preview.nvim', ft = 'markdown' },
  { 'wuelnerdotexe/vim-astro', ft = 'astro' },
  { 'towolf/vim-helm', ft = 'helm' },
  { 'hashivim/vim-terraform', ft = { 'tf', 'hcl' } }
}, {})

