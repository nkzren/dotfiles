require("aerial").setup({
  on_attach = function(bufnr)
    vim.keymap.set("n", "<C-k>", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "<C-j>", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
