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
  local success, result = pcall(loadstring(s))
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
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-buffers"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/ctrlp.vim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-indent-object"
  },
  ["vim-python-pep8-indent"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-python-pep8-indent"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/jjr/.local/share/nvim/site/pack/packer/start/vim-toml"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
