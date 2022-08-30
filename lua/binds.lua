-- vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap

-------- MAP -------- 
-- insert
keymap('i', 'jk', '<Esc><CR>', {})
-- visual
keymap('v', '<F2>', ':ygv <CR>', { silent = true }) -- selection copy in windows buffer
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
keymap('n', '<c-z>', ':NERDTreeToggle<CR>', opts)
keymap('n', '<F7>', ':SignifyToggleHightlight<CR>', opts)
keymap('n', '<Left>', ':echo "Use h"<CR>', opts)
keymap('n', '<Right>', ':echo "Use l"<CR>', opts)
keymap('n', '<Up>', ':echo "Use k"<CR>', opts)
keymap('n', '<Down>', ':echo "Use j"<CR>', opts)

-- insert
keymap('i', "'", "''<left>", opts)
keymap('i', '"', '""<left>', opts)
keymap('i', '(', '()<left>', opts)
keymap('i', '[', '[]<left>', opts)
keymap('i', '{', '{}<left>', opts)
keymap('i', '<', '<><left>', opts)

