local g = vim.g

g.coq_settings = {
    auto_start = "shut-up"
}

vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {
    expr = true
})

vim.api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {
    expr = true
})

--Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noinsert,noselect"

--Avoid showing message extra message when using completion
vim.o.shortmess = vim.o.shortmess .. "c"

vim.g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp', "buffer", "buffers" } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}
