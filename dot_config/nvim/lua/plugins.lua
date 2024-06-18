require('lazy').setup({
  require 'plugins/core',
  require 'plugins/nerdtree',
  require 'plugins/appearance',
  require 'plugins/treesitter',
  require 'plugins/completions',

  {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('render-markdown').setup({})
    end,
    init = function()
      vim.keymap.set('n', '<leader>M', ':RenderMarkdownToggle<CR>', { noremap=true, silent=true })
    end,
  },
  { 'wuelnerdotexe/vim-astro', ft = 'astro' },
  { 'towolf/vim-helm', ft = 'helm' },
  { 'nkzren/vim-go', ft = 'go' },
}, {})

