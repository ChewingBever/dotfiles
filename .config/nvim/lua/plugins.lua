-- require("impatient")

-- This part auto-installs Packer if it's not present
-- Largely inspired by https://github.com/wbthomason/packer.nvim#bootstrapping
local fn = vim.fn
local g = vim.g
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command('packadd packer.nvim')
end

require('packer').startup(function()
    use "wbthomason/packer.nvim"
    -- Improves boot times
    -- use {"lewis6991/impatient.nvim", rocks = 'mpack'}
    use "ctrlpvim/ctrlp.vim"
    use "tpope/vim-fugitive"
    use "tpope/vim-commentary"
    use "tpope/vim-surround"
    use "majutsushi/tagbar"
    use "airblade/vim-gitgutter"
    use "hynek/vim-python-pep8-indent"
    use "michaeljsmith/vim-indent-object"
    use "preservim/nerdtree"
    use "cespare/vim-toml"
    use "jiangmiao/auto-pairs"
    use "godlygeek/tabular"
    use "editorconfig/editorconfig-vim"
    use "neovim/nvim-lspconfig"
    -- use "hrsh7th/nvim-compe"
    use "marko-cerovac/material.nvim"
    use "nvim-lua/completion-nvim"
    use "steelsojka/completion-buffers"
    use {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"}
    use "akinsho/nvim-toggleterm.lua"
end)


-- =====PLUGIN CONFIGS=====
-- ctrlpvim/ctrlp.vim
g.ctrlp_map = "<leader>t"
g.ctrlp_use_caching = 1
g.ctrlp_clear_cache_on_exit = 0
g.ctrlp_cache_dir = "./.vim/cache/ctrlp"
g.ctrlp_user_command = {
    '.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'
}

--Limit max number of files
--This prevents me from indexing my entire HOME by accident
g.ctrlp_max_files = 10000
--Also limit recursion depth
g.ctrlp_max_depth = 40

-- tpope/vim-fugitive
nmap("<leader>gg", ":Git<CR>")
nmap("<leader>gc", ":Git commit<CR>")
nmap("<leader>gp", ":Git push<CR>")
nmap("<leader>gd", ":Gdiffsplit!<CR>")
nmap("<leader>gm", ":Git mergetool<CR>")
nmap("<leader>gb", ":Git blame<CR>")

-- airblade/vim-gitgutter
g.gitgutter_map_keys = 0

-- indentline
g.indentLine_char_list = {'|', '¦', '┆', '┊'}

-- preservim/nerdtree
g.NERDTreeIgnore = {
    '^\\.vim$[[dir]]',
    '^\\.vscode$[[dir]]', '.*\\.code-workspace$[[file]]', '^\\.idea$[[dir]]',
    '^__pycache__$[[dir]]', '^\\.pytest_cache$[[dir]]', '^venv$[[dir]]',
        '\\.egg-info$[[dir]]', '^dist$[[dir]]', '^build$[[dir]]',
        '^\\.eggs$[[dir]]',
    '^out$[[dir]]',
    '^\\.git$[[dir]]',
    '^\\.stack-work$[[dir]]', '\\.lock$',
    '^CMakeFiles$[[dir]]', '^CMakeCache.txt$[[file]]',
    '.pdf$[[file]]'
}

g.NERDTreeShowHidden = 1
g.NERDTreeMinimalUI = 1
g.NERDTreeDirArrows = 1
g.NERDTreeQuitOnOpen = 1
g.NERDTreeChDirMode = 0
g.NERDTreeNaturalSort = 1
g.NERDTreeShowFiles = 1
g.NERDTreeShowLineNumbers = 0
g.NERDTreeWinPos = 'left'
g.NERDTreeMinimalMenu = 1
g.NERDTreeAutoDeleteBuffer = 1

nmap("tt", ":NERDTreeFind<CR>")

-- majutsushi/tagbar
g.tagbar_map_nexttag = "J"
g.tagbar_map_prevtag = "K"
g.tagbar_map_showproto = "u"
g.tagbar_sort = 0
g.tagbar_compact = 1
g.tagbar_autoshowtag = 1
g.no_status_line = 1
g.tagbar_autoclose = 1

nmap("tr", ":TagbarToggle<CR>")

-- neovim/neovim-lspconfig
-- Comes with clang
require'lspconfig'.clangd.setup{}
-- NPM: dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup{}
-- Pacman: haskell-language-server
-- AUR: haskell-language-server-bin
-- GH: https://github.com/haskell/haskell-language-server
require'lspconfig'.hls.setup{}
-- Pacman: rust-analyzer
-- GH: https://github.com/rust-analyzer/rust-analyzer
require'lspconfig'.rust_analyzer.setup{}
-- Installed using R shell:
-- `install.packages('languageserver')`
-- GH: https://github.com/REditorSupport/languageserver
require'lspconfig'.r_language_server.setup{}

-- material
-- require('material').set()
-- colorscheme matieral
-- vim.o.colors_name = "material"
vim.cmd("colorscheme material")
-- color material
nmap("<leader>c", [[<Cmd>lua require('material.functions').toggle_style()<CR>]])

-- nvim-lua/completion-nvim
vim.api.nvim_exec("autocmd BufEnter * lua require'completion'.on_attach()", false)
--Use <Tab> and <S-Tab> to navigate through popup menu
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

require"nvim-treesitter.configs".setup {
    highlight = { enable = true }
}

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
