------- BACKGROUND FOR BSWPM ------
vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal guibg=#1D2031
    augroup END
]])
vim.o.termguicolors = true
vim.cmd [[hi normal guibg=#1D2031]]
