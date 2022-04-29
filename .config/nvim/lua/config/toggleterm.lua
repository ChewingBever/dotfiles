vim.o.hidden = true

require("toggleterm").setup {
    -- open_mapping = "<leader>r",
    direction = "float",
    insert_mappings = false,
    start_in_insert = false
}

local Terminal = require('toggleterm.terminal').Terminal
local always_visible = Terminal:new{
    direction = "horizontal",
    count = 6
}

function _always_visible_toggle()
    always_visible:toggle()
end

nmap("<leader>rr", ":1ToggleTerm<CR>")
nmap("<leader>ry", ":2ToggleTerm<CR>")
nmap("<leader>ru", ":3ToggleTerm<CR>")
nmap("<leader>ri", ":4ToggleTerm<CR>")
nmap("<leader>ro", ":5ToggleTerm<CR>")
nmap("<leader>rp", "<cmd>lua _always_visible_toggle()<CR>")
