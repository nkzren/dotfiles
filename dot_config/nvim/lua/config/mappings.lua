local map = vim.api.nvim_set_keymap

local noremap = { silent = true, noremap = true }

-- Navigate windows
map('n', '<M-j>', '<C-W>j', noremap)
map('n', '<M-k>', '<C-W>k', noremap)
map('n', '<M-h>', '<C-W>h', noremap)
map('n', '<M-l>', '<C-W>l', noremap)

-- Resize windows
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })

-- Move lines
map("n", "<C-j>", "<cmd>m .+1<CR>==", { desc = "Move down" })
map("n", "<C-k>", "<cmd>m .-2<CR>==", { desc = "Move up" })
map("i", "<C-j>", "<esc><cmd>m .+1<CR>==gi", { desc = "Move down" })
map("i", "<C-k>", "<esc><cmd>m .-2<CR>==gi", { desc = "Move up" })
map("x", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move down" })
map("x", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- Clipboard
map('n', '<leader>y', '"+y', noremap)
map('v', '<leader>y', '"+y', noremap)

map('n', '<leader>p', '"+p', noremap)
map('n', '<leader>P', '"+P', noremap)
map('v', '<leader>p', '"+p', noremap)

-- Comments
map('n', '<C-_>', 'gcc', {})
map('i', '<C-_>', '<esc>gcci', {})
map('x', '<C-_>', 'gc', {})

-- Misc stuff
map('n', '<C-c>', ':set cuc!<CR>', noremap)


-- Whitespace
map('n', '<leader>w', ':set list!<CR>', noremap)
vim.opt.listchars = { trail = '␣', tab = '|-', eol = '↵', extends = '>', precedes = '<'  }
