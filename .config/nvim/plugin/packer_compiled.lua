-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jjr/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/jjr/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/jjr/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/jjr/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jjr/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  coq_nvim = {
    config = { "require('config.coq')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/opt/ctrlp.vim",
    url = "https://github.com/ctrlpvim/ctrlp.vim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\1\2‘\1\0\0\3\0\6\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\3\0%\1\4\0%\2\5\0>\0\3\1G\0\1\0><Cmd>lua require('material.functions').toggle_style()<CR>\14<leader>c\tnmap\25colorscheme material\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  nerdtree = {
    config = { "require('config.nerdtree')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lspconfig')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "require('config.toggleterm')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require('config.treesitter')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  tagbar = {
    config = { "require('config.tagbar')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/majutsushi/tagbar"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    config = { "require('config.fugitive')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    config = { "require('config.gitgutter')" },
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-python-pep8-indent"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-python-pep8-indent",
    url = "https://github.com/hynek/vim-python-pep8-indent"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimtex = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: ctrlp.vim
time([[Setup for ctrlp.vim]], true)
require('config.ctrlp')
time([[Setup for ctrlp.vim]], false)
time([[packadd for ctrlp.vim]], true)
vim.cmd [[packadd ctrlp.vim]]
time([[packadd for ctrlp.vim]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
require('config.toggleterm')
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('config.lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\1\2‘\1\0\0\3\0\6\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\3\0%\1\4\0%\2\5\0>\0\3\1G\0\1\0><Cmd>lua require('material.functions').toggle_style()<CR>\14<leader>c\tnmap\25colorscheme material\bcmd\bvim\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: vim-gitgutter
time([[Config for vim-gitgutter]], true)
require('config.gitgutter')
time([[Config for vim-gitgutter]], false)
-- Config for: coq_nvim
time([[Config for coq_nvim]], true)
require('config.coq')
time([[Config for coq_nvim]], false)
-- Config for: tagbar
time([[Config for tagbar]], true)
require('config.tagbar')
time([[Config for tagbar]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
require('config.nerdtree')
time([[Config for nerdtree]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
require('config.fugitive')
time([[Config for vim-fugitive]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('config.treesitter')
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
