local o = vim.o
local g = vim.g

g.mapleader = " "
g.maplocalleader = "\\<tab>"

-- I often use non-standard shells that don't play nicely wiht certain features
o.shell = "/bin/bash"

-- Centers your cursor whenever possible
-- 999 is just a really large number (I think it's amount of lines or something)
o.scrolloff = 999

-- Forces Neovim to assume a 256-color terminal; required for certain colorschemes
o.termguicolors = true

-- Set the colorscheme
-- g.colors_name = "flattened_dark"

-- This combo shows the absolute line number on the current line & the relative one on all the others
o.number = true
o.relativenumber = true

-- Opens new files to the bottom, right resp. of the current buffer
o.splitbelow = true
o.splitright = true

-- Converts tabs to 4 spaces
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

-- Show search matches as I'm typing
o.incsearch = true
-- Makes search case-sensitive only when using caps
o.smartcase = true
-- Don't highlight search results after search is finished
o.hlsearch = false

local swap_dir = vim.fn.stdpath('data') .. '/swap'
local undo_dir = vim.fn.stdpath('data') .. '/undo'

-- Create swap files
o.swapfile = true
-- Where to store the swap files; I store mine in the current directory
o.directory = swap_dir

o.backup = false

o.undofile = true
o.undodir = undo_dir

o.updatetime = 250

o.shelltemp = false

-- o.completeopt = "menuone,noselect"
