require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- " Other plugins
    use 'preservim/nerdtree'
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

    -- " Git integration
    use 'mhinz/vim-signify'
end)


