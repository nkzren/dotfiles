local templatePattern = function (path, bufnr, ext)
  return ext
end

vim.filetype.add({
  filename = {
    [".git/config"] = "gitconfig",
  },
  pattern = {
    [".*i3/config.*"] = "i3config",
    [".*Jenkinsfile.*"] = "groovy",
    [".*zshrc.*"] = "zsh",
    [".*zprofile.*"] = "zsh",
    [".*nginx.*conf.*"] = "nginx",
    [".*%.properties%.sample"] = "jproperties",
    [".*%.(%a+)%.sample"] = templatePattern,
    [".*%.(%a+)%.template"] = templatePattern,
    [".*%.(%a+)%.tpl"] = templatePattern,
    [".*%.(%a+)%.tmpl"] = templatePattern,
  }
})

