function map(mode, keys, command)
    vim.api.nvim_set_keymap(mode, keys, command, {
        silent = true,
        noremap = true
    })
end

nmap = function(keys, command) map("n", keys, command) end
imap = function(keys, command) map("i", keys, command) end
vmap = function(keys, command) map("v", keys, command) end
tmap = function(keys, command) map("t", keys, command) end
