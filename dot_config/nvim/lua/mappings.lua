local map = vim.api.nvim_set_keymap
local set = vim.keymap.set
local opts = { noremap=true, silent=true }

map('n', '<M-1>',':tabprevious<CR>' , opts)
map('n', '<M-2>',':tabnext<CR>' , opts)
map('', '<leader>j', ':bn<CR>', opts)
map('', '<leader>k', ':bp<CR>', opts)

map('n', '<M-j>', '<C-W>j', opts)
map('n', '<M-k>', '<C-W>k', opts)
map('n', '<M-h>', '<C-W>h', opts)
map('n', '<M-l>', '<C-W>l', opts)

map("n", "<C-Up>", "<cmd>resize +5<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize +5<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize -5<cr>", { desc = "Increase window width" })

map('n', '<leader>y', '"+y', { noremap = true })
map('n', '<leader>Y', '"+yy', { noremap = true })
map('v', '<leader>y', '"+y', { noremap = true })

map('n', '<leader>p', '"+p', { noremap = true })
map('n', '<leader>P', '"+P', { noremap = true })
map('v', '<leader>p', '"+p', { noremap = true })

-- Comfortable motion
map('n', '<C-d>', ':call comfortable_motion#flick(100)<CR>', opts)
map('n', '<C-u>', ':call comfortable_motion#flick(-100)<CR>', opts)

-- Comments
map('n', '<C-_>', 'gcc', {})
map('v', '<C-_>', 'gc', {})

-- Telescope
local builtin = require('telescope.builtin')

set('n', '<leader>fd', builtin.find_files, { noremap = true })
set('n', '<leader>rg', builtin.live_grep, {})
set('n', '<leader><space>', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})

-- NERDTree
map('n', '<C-a>',':NERDTreeToggle<CR>' , opts)
map('n', '<leader>T',':NERDTreeFind<CR>' , opts)

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
set('n', '<leader>e', vim.diagnostic.open_float, opts)
set('n', '<leader>n', vim.diagnostic.goto_prev, opts)
set('n', '<leader>N', vim.diagnostic.goto_next, opts)
set('n', '<leader>q', vim.diagnostic.setloclist, opts)

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.tf"},
  command = "setlocal commentstring=#\\ %s",
})

local cuc = false
set('n', '<C-C>', function()
  if cuc == false then
    cuc = true
    -- Perform actions when toggle is turned on
    vim.cmd("set cuc")
  else
    cuc = false
    -- Perform actions when toggle is turned off
    vim.cmd("set cuc!")
  end
end
)
