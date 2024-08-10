-- Captures the group in (%a+) to ext argument and returns it
local templatePattern = function (_, _, ext)
  return ext
end

vim.filetype.add({
  filename = {
    ['.git/config'] = 'gitconfig',
  },
  extension = {
	yml = 'yaml',
  },
  pattern = {
    ['.*i3/config.*'] = 'i3config',
    ['.*Jenkinsfile.*'] = 'groovy',
    ['.*zshrc.*'] = 'zsh',
    ['.*zprofile.*'] = 'zsh',
    ['.*nginx.*conf.*'] = 'nginx',
    ['.*%.properties%.sample'] = 'jproperties',
    ['.*%.(%a+)%.sample'] = templatePattern,
    ['.*%.(%a+)%.template'] = templatePattern,
    ['.*%.(%a+)%.tpl'] = templatePattern,
    ['.*%.(%a+)%.tmpl'] = templatePattern,
  }
})
