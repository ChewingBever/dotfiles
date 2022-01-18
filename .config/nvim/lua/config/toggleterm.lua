vim.o.hidden = true

require("toggleterm").setup {
    -- open_mapping = "<leader>r",
    direction = "float",
    insert_mappings = false,
    start_in_insert = false
}

nmap("<leader>rr", ":ToggleTerm<CR>")
nmap("<leader>ry", ":1ToggleTerm<CR>")
nmap("<leader>ru", ":2ToggleTerm<CR>")
nmap("<leader>ri", ":3ToggleTerm<CR>")
nmap("<leader>ro", ":4ToggleTerm<CR>")
nmap("<leader>rp", ":5ToggleTerm<CR>")
