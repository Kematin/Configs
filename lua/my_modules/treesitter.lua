-- Treesitter (zx, zc)
local configs = require'nvim-treesitter.configs'
configs.setup {
highlight = { -- enable highlighting
  enable = true, 
},
indent = {
  enable = false, -- default is disabled anyways
}
}


