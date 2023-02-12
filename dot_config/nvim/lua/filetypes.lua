-- https://github.com/nathom/filetype.nvim
require("filetype").setup({
	overrides = {
		complex = {
			[".*json.sample"] = "json",
			[".*properties.sample"] = "jproperties",
			[".*yaml.sample"] = "yaml",
			[".*zshrc.sample"] = "zsh",
			[".*i3/config"] = "i3config",
			[".*git/config"] = "gitconfig", -- Included in the plugin
		},
		shebang = {
			-- Set the filetype of files with a dash shebang to sh
			dash = "sh",
		},
	},
})


