local autocmd = vim.api.nvim_create_autocmd
local let = vim.g

local config = function()
  let.NERDTreeMinimalUI = 1
  let.NERDTreeDirArrows = 1
  let.NERDTreeQuitOnOpen = 1
  let.NERDTreeAutoDeleteBuffer = 1

  -- Open a Nerdtree when no args
  autocmd('StdinReadPre', {
    command = 'let s:std_in=1'
  })
  autocmd('VimEnter', {
    command = 'if argc() == 0 && !exists("s:std_in") | NERDTree | endif'
  })

  -- Autoclose tree on last window
  autocmd('BufEnter', {
    command = 'autocmd BufEnter * if tabpagenr("$") == 1 && winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | quit | endif'
  })

  -- Same tree on all tabs
  autocmd('BufWinEnter', {
    command = 'if &buftype != "quickfix" && getcmdwintype() == "" | silent NERDTreeMirror | endif'
  })
end

return {
  {
    'preservim/nerdtree',
    config = config
  },
  'Xuyuanp/nerdtree-git-plugin'
}
