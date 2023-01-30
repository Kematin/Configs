------- COLORSCHEME ------- 
-- let g:material_terminal_italics = 1
--  " variants: default, palenight, ocean, lighter, darker, default-community,
--  "           palenight-community, ocean-community, lighter-community,
--  "           darker-community
-- " let g:material_theme_style = 'darker'
-- " colorscheme material
-- " variants: mirage, dark, dark
-- colorscheme ayu
-- " colorscheme Atelier_PlateauLight
vim.cmd [[set termguicolors]]
-- vim.cmd [[let ayucolor="dark"]]
vim.cmd("colorscheme Atelier_PlateauLight")
vim.cmd [[set colorcolumn=85]]

------- SIGNIFY GIT ------- 
vim.cmd [[set updatetime=100]]
vim.cmd [[let g:signify_sign_change= '~']]

------- TURN ON VIM-SNEAK ------- 
vim.cmd [[let g:sneak#label = 1]]

------- FOR PRETTIER ------- 
vim.cmd [[let g:prettier#quickfix_enabled = 0]]

------- CHANGE COLOR FOR LSP ------- 
vim.cmd [[hi DiagnosticError guifg=White]]
vim.cmd [[hi DiagnosticWarn guifg=White]]
vim.cmd [[hi DiagnosticInfo guifg=White]]
vim.cmd [[hi DiagnosticHint guifg=White]]

