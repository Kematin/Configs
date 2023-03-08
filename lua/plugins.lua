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

    -- Markdown preview
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    

    -- color schemas
    use 'kaicataldo/material.vim'
    use 'flazz/vim-colorschemes'
    use 'https://github.com/xolox/vim-misc.git'
    use 'https://github.com/xolox/vim-colorscheme-switcher.git'

    -- Git integration
    use 'mhinz/vim-signify'

    -- Autosave
    use({
        "Pocco81/auto-save.nvim",
        config = function()
             require("auto-save").setup {
                -- your config goes here
                -- or just leave it empty :)
             }
        end,
    })

    -- Alpha vim (Dashboard)
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
            local start = require("alpha.themes.dashboard")
            start.section.buttons.val = {
                start.button("e", "  New file", "<cmd>ene <CR>"),
                start.button("m", "  Mason Installer", ":Mason<CR>"),
                start.button("v", "  Nvim config", ":e ~/.config/nvim/init.lua<CR>"),
                start.button("SPC f f", "  Find file"),
                start.button("SPC f g", "  Find word"),
                start.button("q", "✗  Quit", ":q<CR>"),
            }
        end
    }

    -- Vim sneak
    use 'justinmk/vim-sneak'

    -- Autocomplete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use "rafamadriz/friendly-snippets"

     -- LSP configuration (with mason)
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    -- Dap
    use "mfussenegger/nvim-dap"
    -- Formatter and Linter
    use('MunifTanjim/prettier.nvim')
    use "jose-elias-alvarez/null-ls.nvim"
end)


