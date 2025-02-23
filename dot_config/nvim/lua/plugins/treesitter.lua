return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function (_, opts)
			require("treesitter-context").setup(opts)
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
		},
		init = function(plugin)
			require("lazy.core.loader").add_to_rtp(plugin)
			require("nvim-treesitter.query_predicates")
		end,
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c",
					"go",
					"elixir",
					"heex",
					"html",
					"java",
					"javascript",
					"markdown",
					"lua",
					"query",
					"terraform",
					"vim",
					"vimdoc",
					"yaml",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
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
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
}
