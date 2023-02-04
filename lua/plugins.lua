require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- " Other plugins
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    -- Neotree
    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
      }
    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Essential plugins
    use 'tpope/vim-surround' 
    -- ysw" word -> "word"
    -- ysw<h1> word -> <h1>word</h1>
    -- ds" "word" -> word
    -- cs"' "word" -> 'word'
    use 'mattn/emmet-vim'
    use 'vim-airline/vim-airline'
    use 'https://github.com/tpope/vim-commentary.git'
    use 'https://github.com/Shougo/neoinclude.vim.git'
    use 'zchee/deoplete-jedi'
    use ({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- color schemas
    use 'kaicataldo/material.vim'
    use 'flazz/vim-colorschemes'
    use 'https://github.com/xolox/vim-misc.git'
    use 'https://github.com/xolox/vim-colorscheme-switcher.git'

    -- Git integration
    use 'mhinz/vim-signify'

    -- LSP configuration
    use 'neovim/nvim-lspconfig'

    -- Alpha vim (Dashboard)
    use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
    }

    -- Vim sneak
    use 'justinmk/vim-sneak'    

    -- Autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-lua/plenary.nvim'
    
end)


