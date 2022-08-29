-- include
require("plugins")
require("binds")
require("settings")

------------ ETC ------------ 
-- colorscheme
-- let g:material_terminal_italics = 1
--  " variants: default, palenight, ocean, lighter, darker, default-community,
--  "           palenight-community, ocean-community, lighter-community,
--  "           darker-community
-- " let g:material_theme_style = 'darker'
-- " colorscheme material
-- " variants: mirage, dark, dark
-- colorscheme ayu
-- " colorscheme iceberg
-- " colorscheme Atelier_PlateauLight
vim.cmd [[set termguicolors]]
vim.cmd [[let ayucolor="dark"]]
vim.cmd("colorscheme ayu")
vim.cmd [[set colorcolumn=85]]

-- signify git hightlight
vim.cmd [[set updatetime=100]]
vim.cmd [[let g:signify_sign_change= '~']]
-- Turn on vim-sneak
vim.cmd [[let g:sneak#label = 1]]
-- Disable quickfix window for prettier
vim.cmd [[let g:prettier#quickfix_enabled = 0]]


-- local keymap = vim.api.nvim_set_keymap
-- use { 
--   'goolord/alpha-nvim',
--   requires = { 'kyazdani42/nvim-web-devicons' },
--   config = function ()
--     require'alpha'.setup(require'alpha.themes.startify'.opts)
--     local startify = require("alpha.themes.startify")
--     startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
--     startify.section.bottom_buttons.val = {
--       startify.button("e", "new file", ":ene <bar> startinsert <cr>"),
--       startify.button("v", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
--       startify.button("q", "quit nvim", ":qa<cr>"),
--     }  
--     keymap('n', '<c-n>', ':Alpha<cr>', {noremap = true})
--   end
-- }
