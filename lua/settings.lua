------- COLORSCHEME ------- 
vim.cmd("set termguicolors")
-- vim.cmd("colorscheme Atelier_PlateauLight")
vim.cmd("colorscheme base16-ateliercave")
vim.cmd [[set colorcolumn=85]]

------- SIGNIFY GIT ------- 
vim.cmd [[set updatetime=100]]
vim.cmd [[let g:signify_sign_change= '~']]

------- FOR PRETTIER ------- 
vim.cmd [[let g:prettier#quickfix_enabled = 0]]
vim.cmd [[let g:prettier#autoformat = 1]]
vim.cmd [[let g:prettier#autoformat_require_pragma = 0]]

------- CHANGE COLOR FOR LSP ------- 
vim.cmd [[hi DiagnosticError guifg=White]]
vim.cmd [[hi DiagnosticWarn guifg=White]]
vim.cmd [[hi DiagnosticInfo guifg=White]]
vim.cmd [[hi DiagnosticHint guifg=White]]

------- DEVICONS ------- 
vim.cmd [[set guifont=DroidSansMono\ Nerd\ Font:h11]]
vim.cmd [[let g:airline#extensions#tabline#fnamemod = ':t']]
