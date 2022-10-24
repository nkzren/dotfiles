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

map('n', 'yY', '"+yy', { noremap = true })
map('v', '<C-y>', '"+y', { noremap = true })

-- Comfortable motion
map('n', '<C-d>', ':call comfortable_motion#flick(100)', opts)
map('n', '<C-u>', ':call comfortable_motion#flick(-100)', opts)

-- Comments
map('n', '<C-_>', 'gcc', {})
map('v', '<C-_>', 'gc', {})

-- Telescope
local builtin = require('telescope.builtin')

set('n', '<leader>ff', builtin.find_files, { noremap = true })
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})

-- NERDTree
map('n', '<C-a>',':NERDTreeToggle<CR>' , opts)

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)