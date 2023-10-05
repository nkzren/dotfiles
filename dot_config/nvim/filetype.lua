vim.filetype.add({
  filename = {
    [".git/config"] = "gitconfig",
  },
  pattern = {
    [".*i3/config.*"] = "i3config",
    [".*Jenkinsfile.*"] = "groovy",
    [".*zshrc.*"] = "zsh",
    [".*%.properties%.sample"] = "jproperties",
    [".*nginx.*conf.*"] = "nginx",
    [".*%.(%a+)%.(sample|template|tmpl)"] = function (path, bufnr, ext)
      return ext
    end,
  }
})

