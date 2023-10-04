-- see https://github.com/nathom/filetype.nvim
return {
  overrides = {
    complex = {
      [".*json.sample"] = "json",
      [".*properties"] = "jproperties",
      [".*properties.sample"] = "jproperties",
      [".*yaml.sample"] = "yaml",
      [".*zshrc.sample"] = "zsh",
      [".*i3/config"] = "i3config",
      ["dot_zshrc"] = "zsh",
      [".*nginx.*/*.conf"] = "nginx",
      ["nginx.conf.template"] = "nginx",
      [".*git/config"] = "gitconfig", -- Included in the plugin
    },
    shebang = {
      -- Set the filetype of files with a dash shebang to sh
      dash = "sh",
    },
  }
}
