-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/mnt/b/home/kematin/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/mnt/b/home/kematin/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/mnt/b/home/kematin/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/mnt/b/home/kematin/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/mnt/b/home/kematin/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nÇ\4\0\0\b\0\30\1;6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\1\5\0009\1\6\0014\2\b\0009\3\b\0'\5\t\0'\6\n\0'\a\v\0B\3\4\2>\3\1\0029\3\b\0'\5\f\0'\6\r\0'\a\14\0B\3\4\2>\3\2\0029\3\b\0'\5\15\0'\6\16\0'\a\17\0B\3\4\2>\3\3\0029\3\b\0'\5\18\0'\6\19\0'\a\20\0B\3\4\2>\3\4\0029\3\b\0'\5\21\0'\6\22\0'\a\23\0B\3\4\2>\3\5\0029\3\b\0'\5\24\0'\6\25\0'\a\26\0B\3\4\2>\3\6\0029\3\b\0'\5\27\0'\6\28\0'\a\29\0B\3\4\0?\3\0\0=\2\a\1K\0\1\0\v:q<CR>\14âœ—  Quit\6q\29:Telescope live_grep<CR>\19ïœ«  Find word\6g\30:Telescope find_files<CR>\19ï¡ˆ  Find file\6f&:Neotree float ~/.config/nvim<CR>\21ï‘¡  Nvim config\6v\15:Mason<CR>\25ïœ¡  Mason Installer\6m\25:Neotree float .<CR>\17ï‘¤  NeoTree\6n\18<cmd>ene <CR>\18ï…›  New file\6e\vbutton\bval\fbuttons\fsection\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\15€€À™\4\0" },
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-save.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14auto-save\frequire\0" },
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/Pocco81/auto-save.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lunar.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/lunar.nvim",
    url = "https://github.com/lunarvim/lunar.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/material.vim",
    url = "https://github.com/kaicataldo/material.vim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["tabby.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/tabby.nvim",
    url = "https://github.com/nanozuki/tabby.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-colorscheme-switcher.git"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-colorscheme-switcher.git",
    url = "https://github.com/xolox/vim-colorscheme-switcher"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-commentary.git"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-commentary.git",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-misc.git"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-misc.git",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/mnt/b/home/kematin/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14auto-save\frequire\0", "config", "auto-save.nvim")
time([[Config for auto-save.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nÇ\4\0\0\b\0\30\1;6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\1\5\0009\1\6\0014\2\b\0009\3\b\0'\5\t\0'\6\n\0'\a\v\0B\3\4\2>\3\1\0029\3\b\0'\5\f\0'\6\r\0'\a\14\0B\3\4\2>\3\2\0029\3\b\0'\5\15\0'\6\16\0'\a\17\0B\3\4\2>\3\3\0029\3\b\0'\5\18\0'\6\19\0'\a\20\0B\3\4\2>\3\4\0029\3\b\0'\5\21\0'\6\22\0'\a\23\0B\3\4\2>\3\5\0029\3\b\0'\5\24\0'\6\25\0'\a\26\0B\3\4\2>\3\6\0029\3\b\0'\5\27\0'\6\28\0'\a\29\0B\3\4\0?\3\0\0=\2\a\1K\0\1\0\v:q<CR>\14âœ—  Quit\6q\29:Telescope live_grep<CR>\19ïœ«  Find word\6g\30:Telescope find_files<CR>\19ï¡ˆ  Find file\6f&:Neotree float ~/.config/nvim<CR>\21ï‘¡  Nvim config\6v\15:Mason<CR>\25ïœ¡  Mason Installer\6m\25:Neotree float .<CR>\17ï‘¤  NeoTree\6n\18<cmd>ene <CR>\18ï…›  New file\6e\vbutton\bval\fbuttons\fsection\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\15€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
