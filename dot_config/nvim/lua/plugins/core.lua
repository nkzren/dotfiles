return {
	"RRethy/vim-illuminate",
	"tpope/vim-commentary",
	"tpope/vim-sleuth",
	{ "Einenlum/yaml-revealer", ft = { "yaml", "helm" } },
	{
		'echasnovski/mini.surround',
		version = '*',
		opts = {
			mappings = {
				add = "gsa",        -- Add surrounding in Normal and Visual modes
				delete = "gsd",     -- Delete surrounding
				find = "gsf",       -- Find surrounding (to the right)
				find_left = "gsF",  -- Find surrounding (to the left)
				highlight = "gsh",  -- Highlight surrounding
				replace = "gsr",    -- Replace surrounding
				update_n_lines = "gsn", -- Update `n_lines`
			},
		}
	},
	{
		"echasnovski/mini.pairs",
		-- Should execute before CoC
		priority = 40,
		opts = {
			skip_ts = { "string" },
			skip_unbalanced = true,
			markdown = true,
		},
		config = function(_, opts)
			require("mini.pairs").setup(opts)
		end
	},
	{
		"yuttie/comfortable-motion.vim",
		init = function()
			vim.g.comfortable_motion_no_default_key_mappings = 1
			vim.g.comfortable_motion_friction = 130.0
			vim.g.comfortable_motion_air_drag = 2.2

			local opts = { noremap = true, silent = true }
			vim.api.nvim_set_keymap('n', '<C-d>', ':call comfortable_motion#flick(100)<CR>', opts)
			vim.api.nvim_set_keymap('n', '<C-u>', ':call comfortable_motion#flick(-100)<CR>', opts)
		end
	},
	{
		"nvim-telescope/telescope.nvim",
		version = '*',
		-- Should be after CoC
		priority = 100,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/aerial.nvim",
		},
		init = function()
			local builtin = require("telescope.builtin")
			local set = vim.keymap.set

			set("n", "<leader>fd", builtin.find_files, { noremap = true })
			set("n", "<leader>rg", builtin.live_grep, {})
			set("n", "<C-H>", builtin.help_tags, {})
			set("n", "<M-q>", ":ccl<CR>", { noremap = true, silent = true })
		end,
		opts = {
			extensions = {
				aerial = {
					show_nesting = {
						["_"] = false, -- This key will be the default
						json = true, -- You can set the option for specific filetypes
						yaml = true,
					},
					show_columns = "both",
				},
			},
		}

	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release"
	},
}
