return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    pcall(require('nvim-treesitter.install').update { with_sync = true })
  end,
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "astro",
      "bash",
      "c",
      "go",
      "hcl",
      "html",
      "java",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "svelte",
      "tf",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-M>",
        node_incremental = "<C-M>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}

