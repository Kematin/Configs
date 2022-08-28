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

" Lsp and autocomplete

" Other plugins
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary.git'
" gcc - line, gc - selection (commentary)
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/Shougo/neoinclude.vim.git'
Plug 'zchee/deoplete-jedi'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


" color schemas
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/xolox/vim-colorscheme-switcher.git'


" Git integration
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()


" colorscheme
let g:material_terminal_italics = 1
 " variants: default, palenight, ocean, lighter, darker, default-community,
 "           palenight-community, ocean-community, lighter-community,
 "           darker-community
" let g:material_theme_style = 'darker'
" colorscheme material
if (has('termguicolors'))
  set termguicolors
endif

" variants: mirage, dark, dark
let ayucolor="dark"
colorscheme ayu
" colorscheme iceberg
" colorscheme Atelier_PlateauLight

" Disable quickfix window for prettier
let g:prettier#quickfix_enabled = 0

" Turn on vim-sneak
let g:sneak#label = 1

" windows buffer
nnoremap <F1> :%y *<CR> " all text in buffer 
inoremap <C-v> <ESC>"+pa
vmap <F2> "+ygv " selection copy in buffer

" Nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-z> :NERDTreeToggle<CR>

" Echo for hjkl
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" auto close
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

" Preview Markdown
nmap <C-s> <Plug>MarkdownPreviewToggle

" Tabs
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <F4> :tabnew<CR>

" Git highlighting
nnoremap <F7> :SignifyToggleHighlight<CR>
set updatetime=100
let g:signify_sign_change= '~'
let g:signify_sign_delete= '_'

" White colors for LSP messages in code
" set termguicolors
" hi DiagnosticError guifg=White
" hi DiagnosticWarn  guifg=White
" hi DiagnosticInfo  guifg=White
" hi DiagnosticHint  guifg=White

" for me
set colorcolumn=85
