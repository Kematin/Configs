vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.fileformat = unix
vim.opt.mouse = 'a'
vim.cmd [[set noswapfile]]
vim.cmd [[set encoding=utf-8]]

-- Treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
   
