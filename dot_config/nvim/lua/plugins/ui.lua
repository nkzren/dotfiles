local map = vim.api.nvim_set_keymap
local noremap = { silent = true, noremap = true }

return {
	{
		"folke/which-key.nvim",
		opts = {
			spec = {
				{ "<F11>", desc = "Decrement Selection", mode = "x" },
				{ "<F12>", desc = "Increment Selection", mode = { "x", "n" } },
			},
		},
	},
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		init = function()
			vim.cmd [[colorscheme tokyonight]]
		end,
		opts = {
			style = 'moon'
		},
	},
	{
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v3.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons',
			'MunifTanjim/nui.nvim',
			-- '3rd/image.nvim',
		},
		init = function()
			map('n', '<leader><space>', ':Neotree toggle<CR>', noremap)
			map("n", "<M-9>", ':Neotree buffers<CR>', noremap)
			map('n', '<M-0>', ':Neotree<CR>', noremap)
		end,
		opts = {
			window = {
				position = 'right',
				mappings = {
					['<tab>'] = {
						'toggle_node',
						nowait = false,
					},
					['<space>'] = nil,
				},
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				}
			}
		}
	},
	{
		'rcarriga/nvim-notify',
		config = function(_, opts)
			local notify = require('notify')
			notify.setup(opts)
			vim.notify = notify
		end,
		opts = {
			top_down = false,
		}
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		priority = 1000,
		config = true,
		opts = {
			options = {
				theme = 'tokyonight',
			},
			extensions = { 'neo-tree' }
		}
	},
	{
		'lukas-reineke/indent-blankline.nvim',
		main = 'ibl',
		opts = {
			indent = {
				char = '┊'
			}
		},
	},
	{
		'stevearc/aerial.nvim',
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons'
		},
		config = function(_, opts)
			vim.api.nvim_set_keymap('n', '<C-A>', '<cmd>AerialToggle!<CR>', { silent = true, noremap = true })
			require('aerial').setup(opts)
		end,
		opts = {
			on_attach = function(bufnr)
				vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
				vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
			end,
			layout = {
				default_direction = 'left',
			}
		}
	},
}
