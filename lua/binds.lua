-- vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap

-------- MAP LEADER -------- 
vim.cmd [[let mapleader = " "]]

-------- MAP -------- 
-- insert
keymap('i', 'jk', '<Esc><CR>', {})
-- visual
keymap('v', '<c-c>', '"+y', {}) -- selection copy in windows buffer
-- normal
keymap('n', '<c-s>', '<Plug>MarkdownPreviewToggle', {})


-------- NOREMAP -------- 
local opts = { noremap = true }

-- normal
keymap('n', ',<Space>', ':nohlsearch<CR>', opts)
keymap('n', '<c-j>', ':tabprevious<CR>', opts)
keymap('n', '<c-k>', ':tabnext<CR>', opts)
keymap('n', '<F4>', ':tabnew<CR>', opts)
keymap('n', '<F1>', ':%y *<CR>', opts)
keymap('n', '<c-z>', ':Neotree right toggle<CR>', opts)
keymap('n', '<c-x>', ':Neotree focus<CR>', opts)
keymap('n', '<F7>', ':SignifyToggleHightlight<CR>', opts)
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>F', ':Prettier<CR>', opts)

-- insert
keymap('i', "'", "''<left>", opts)
keymap('i', '"', '""<left>', opts)
keymap('i', '(', '()<left>', opts)
keymap('i', '[', '[]<left>', opts)
keymap('i', '{', '{}<left>', opts)
keymap('i', '<', '<><left>', opts)

