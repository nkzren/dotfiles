return {
  {
    'morhetz/gruvbox',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end
  },
  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = false,
        theme = 'gruvbox',
        component_separators = '|',
        section_separators = '',
        extensions = { 'nerdtree' }
      },
    },
  },
  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },
  {
    'yuttie/comfortable-motion.vim',
    config = function()
      vim.g.comfortable_motion_no_default_key_mappings = 1
      vim.g.comfortable_motion_friction=130.0
      vim.g.comfortable_motion_air_drag=2.2
    end
  },
}
