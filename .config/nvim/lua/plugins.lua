-- require("impatient")

-- This part auto-installs Packer if it's not present
-- Largely inspired by https://github.com/wbthomason/packer.nvim#bootstrapping
local fn = vim.fn
local g = vim.g

-- Install packer if it isn't present
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function()
    use "wbthomason/packer.nvim"
    -- Improves boot times
    -- use {"lewis6991/impatient.nvim", rocks = 'mpack'}

    -- Fuzzy search engine
    use {
        "ctrlpvim/ctrlp.vim",
        setup = [[require('config.ctrlp')]]
    }

    -- Git client
    use {
        "tpope/vim-fugitive",
        config = [[require('config.fugitive')]]
    }

    -- Shortcuts for commenting out code
    use "tpope/vim-commentary"

    -- Shortcuts for surrounding pieces of text
    use "tpope/vim-surround"

    -- Shows ctags in a sidebar
    use {
        "majutsushi/tagbar",
        config = [[require('config.tagbar')]]
    }

    -- Shows git diff markers
    use {
        "airblade/vim-gitgutter",
        config = [[require('config.gitgutter')]]
    }

    use "hynek/vim-python-pep8-indent"
    use "michaeljsmith/vim-indent-object"

    -- File explorer
    use {
        "preservim/nerdtree",
        config = [[require('config.nerdtree')]]
    }

    use "jiangmiao/auto-pairs"

    -- Align text
    use "godlygeek/tabular"

    -- Automatically load a .editorconfig file if found
    use "editorconfig/editorconfig-vim"

    -- Pre-configured LSP stuff
    use {
        "neovim/nvim-lspconfig",
        config = [[require('config.lspconfig')]]
    }

    -- Beautiful treesitter-compatible theme
    use {
        "marko-cerovac/material.nvim",
        config = function()
            vim.cmd("colorscheme material")
            -- color material
            nmap("<leader>c", [[<Cmd>lua require('material.functions').toggle_style()<CR>]])
        end
    }

    -- Autocomplete engine
    use {
        "ms-jpq/coq_nvim",
        branch = "coq",
        config = [[require('config.coq')]]
    }

    -- Better syntax highlighting
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = [[require('config.treesitter')]]
    }
    
    -- Toggleable terminals
    use {
        "akinsho/nvim-toggleterm.lua",
        config = [[require('config.toggleterm')]]
    }

    -- LaTeX editing
    use "lervag/vimtex"
end)
