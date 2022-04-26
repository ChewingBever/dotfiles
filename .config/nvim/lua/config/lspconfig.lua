-- neovim/neovim-lspconfig
local function on_attach(client, bufnr)
    local opts = {
        silent = true,
        noremap = true,
    }
    local function buf_nmap(mapping, cmd) vim.api.nvim_buf_set_keymap(bufnr, "n", mapping, cmd, opts) end

    -- Jump to definition
    buf_nmap("gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
    -- Format current buffer on write
    vim.api.nvim_command([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]])
    -- Show diagnostics for current line
    buf_nmap("<leader>dd", "<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
    -- Jump between diagnostic messages
    buf_nmap("<leader>dj", "<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
    buf_nmap("<leader>dk", "<Cmd>lua vim.lsp.diagnostic.goto_previous()<CR>")
    -- Rename symbol under cursor
    buf_nmap("<leader>dr", "<Cmd>lua vim.lsp.buf.rename()<CR>")
    -- Show hover info
    buf_nmap("<leader>df", "<Cmd>lua vim.lsp.buf.hover()<CR>")
end

-- Comes with clang
require'lspconfig'.clangd.setup{on_attach = on_attach}
-- NPM: dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup{}
-- Pacman: haskell-language-server
-- AUR: haskell-language-server-bin
-- GH: https://github.com/haskell/haskell-language-server
require'lspconfig'.hls.setup{
    on_attach = on_attach,
    settings = {
        haskell = {
            formattingProvider = "stylish-haskell"
        }
    }
}
-- Pacman: vieter-vls (requires my Vieter repository)
-- GH: https://github.com/vlang/vls
require'lspconfig'.vls.setup {
    cmd = {'vls'}
}
-- Pacman: rust-analyzer
-- GH: https://github.com/rust-analyzer/rust-analyzer
require'lspconfig'.rust_analyzer.setup{on_attach = on_attach}
-- Installed using R shell:
-- `install.packages('languageserver')`
-- GH: https://github.com/REditorSupport/languageserver
require'lspconfig'.r_language_server.setup{}
