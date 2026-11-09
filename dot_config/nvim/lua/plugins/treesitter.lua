local ensure_installed = {
	"c",
	"go",
	"elixir",
	"heex",
	"html",
	"java",
	"javascript",
	"markdown",
	"markdown_inline",
	"lua",
	"query",
	"terraform",
	"vim",
	"vimdoc",
	"yaml",
}

return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function(_, opts)
			require("treesitter-context").setup(opts)
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup()
			require("nvim-treesitter").install(ensure_installed)

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local ft = args.match
					local lang = vim.treesitter.language.get_lang(ft) or ft
					if not pcall(vim.treesitter.start, args.buf, lang) then
						return
					end
					vim.bo[args.buf].syntax = "ON"
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("nvim-treesitter-textobjects").setup({})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
}
