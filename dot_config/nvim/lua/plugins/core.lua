return {
  'tpope/vim-surround',
  'tpope/vim-sleuth',
  'tpope/vim-commentary',

  { "lukas-reineke/indent-blankline.nvim", tag = "v2.20.8" },
  { "Einenlum/yaml-revealer", ft = {"yaml", "helm"} },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },

  'RRethy/vim-illuminate',

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
      map_c_h = true
    }
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
      local builtin = require('telescope.builtin')
      local set = vim.keymap.set

      set('n', '<leader>fd', builtin.find_files, { noremap = true })
      set('n', '<leader>rg', builtin.live_grep, {})
      set('n', '<M-0>', builtin.buffers, {})
      set('n', '<C-H>', builtin.help_tags, {})
      set('n', '<M-q>', ':ccl<CR>', { noremap=true, silent=true })
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  -- Git
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    on_attach = function(bufnr)
      vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, { buffer = bufnr, desc = 'Preview git hunk' })

      -- don't override the built-in and fugitive keymaps
      local gs = package.loaded.gitsigns
      vim.keymap.set({'n', 'v'}, ']c', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
      end, {expr=true, buffer = bufnr, desc = "Jump to next hunk"})
      vim.keymap.set({'n', 'v'}, '[c', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
      end, {expr=true, buffer = bufnr, desc = "Jump to previous hunk"})
    end,
  },
}
