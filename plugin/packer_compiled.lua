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
local package_path_str = "/home/kematin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kematin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kematin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kematin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kematin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["deoplete-jedi"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/deoplete-jedi",
    url = "https://github.com/zchee/deoplete-jedi"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/material.vim",
    url = "https://github.com/kaicataldo/material.vim"
  },
  ["neoinclude.vim.git"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/neoinclude.vim.git",
    url = "https://github.com/Shougo/neoinclude.vim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-colorscheme-switcher.git"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/vim-colorscheme-switcher.git",
    url = "https://github.com/xolox/vim-colorscheme-switcher"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-commentary.git"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/vim-commentary.git",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-misc.git"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/vim-misc.git",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/kematin/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
