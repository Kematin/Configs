set relativenumber
set mouse=a  "enable mouse
set encoding=utf-8
set number
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on      " load filetype-specific indent files

imap jk <Esc>  

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary.git'
" gcc - line, gc - selection (commentary)
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/tc50cal/vim-terminal.git'

Plug 'https://github.com/Shougo/neoinclude.vim.git'
Plug 'zchee/deoplete-jedi'

" color schemas
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/xolox/vim-colorscheme-switcher.git'

" For JS/JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()


" colorscheme OceanicNext
let g:material_terminal_italics = 1
 " variants: default, palenight, ocean, lighter, darker, default-community,
 "           palenight-community, ocean-community, lighter-community,
 "           darker-community
let g:material_theme_style = 'darker-community'
colorscheme material
if (has('termguicolors'))
  set termguicolors
endif

""variants: mirage, dark, dark
" let ayucolor="mirage"
" colorscheme ayu
" colorscheme iceberg
" colorscheme Atelier_PlateauLight

nnoremap <F1> :%y *<CR> " all text in buffer 
inoremap <C-v> <ESC>"+pa
vmap <F2> "+ygv " selection copy in buffer

nnoremap <leader>n :NERDTreeFocus<CR>
noremap <C-z> :NERDTree<CR>
nnoremap <C-x> :NERDTreeToggle<CR>

nnoremap <F3> :TerminalVSplit bash<CR>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

