imap("jk", "<Esc>")
-- imap("<Esc>", "<nop>")

-- vim.api.nvim_set_keymap("i", "<Esc>", "<nop>", {})
vim.api.nvim_exec("inoremap <Esc> <nop>", false)

-- Navigate splits
nmap("<leader>h", ":wincmd h<CR>")
nmap("<leader>j", ":wincmd j<CR>")
nmap("<leader>k", ":wincmd k<CR>")
nmap("<leader>l", ":wincmd l<CR>")

-- Just some laziness
nmap("<leader>w", ":w<CR>")
nmap("<leader>q", ":q<CR>")

-- As I don't use arrow keys for navigation, I use them for resizing
nmap("<Up>", ":resize +5<CR>")
nmap("<Down>", ":resize -5<CR>")
nmap("<Right>", ":vertical resize +5<CR>")
nmap("<Left>", ":vertical resize -5<CR>")
nmap("<S-Up>", ":resize +1<CR>")
nmap("<S-Down>", ":resize -1<CR>")
nmap("<S-Right>", ":vertical resize +1<CR>")
nmap("<S-Left>", ":vertical resize -1<CR>")

-- Disable arrow keys in editing & visual mode, as I have no need for them
imap("<Up>", "<nop>")
imap("<Down>", "<nop>")
imap("<Left>", "<nop>")
imap("<Right>", "<nop>")
vmap("<Up>", "<nop>")
vmap("<Down>", "<nop>")
vmap("<Left>", "<nop>")
vmap("<Right>", "<nop>")

-- These bindings I use for managing tabs
nmap("<leader>ee", ":$tabnew<CR>")
nmap("<leader>eL", ":tabnew<CR>")
nmap("<leader>eH", ":-tabnew<CR>")
nmap("<leader>ed", ":tabclose<CR>")
nmap("<leader>el", ":tabnext<CR>")
nmap("<leader>eh", ":tabprevious<CR>")
nmap("<leader>er", ":tabnew<CR>:e term://$SHELL<CR>i")

-- TODO add config editing keybinds

nmap("<leader>a", "<C-^>")
tmap("jk", "<C-\\><C-n>")

-- nmap("<leader>rr", ":e term://$SHELL<CR>")
-- nmap("<leader>rh", ":vsp<CR>:wincmd h<CR>:e term://$SHELL<CR>")
-- nmap("<leader>rl", ":vsp<CR>:e term://$SHELL<CR>")
-- nmap("<leader>rk", ":sp<CR>:wincmd k<CR>:e term://$SHELL<CR>")
-- nmap("<leader>rj", ":sp<CR>:e term://$SHELL<CR>")

nmap("<leader>fh", ":vsp<CR>:wincmd h<CR>")
nmap("<leader>fj", ":sp<CR>")
nmap("<leader>fk", ":sp<CR>:wincmd k<CR>")
nmap("<leader>fl", ":vsp<CR>")

vim.api.nvim_set_keymap("n", "gb", "<C-o>", {})
