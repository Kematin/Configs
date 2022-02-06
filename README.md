# Neovim config by kematin
## Fast download

<p>Download chocolatey</p>

`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`
<b>In Powershell with administrator privileges</b>
<p>Download neovim</p>

`choco install neovim` <b>In Powershell with administrator privileges</b> 

## Config
`~/AppData/Local/nvim/init.vim` file:

```
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

inoremap jk <esc>


call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary.git'
" gcc - line, gc - selection (commentary)
Plug 'https://github.com/ryanoasis/vim-devicons.git'


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
"let g:material_terminal_italics = 1
" variants: default, palenight, ocean, lighter, darker, default-community,
"           palenight-community, ocean-community, lighter-community,
"           darker-community
"let g:material_theme_style = 'darker'
"colorscheme material
if (has('termguicolors'))
  set termguicolors
endif

""variants: mirage, dark, dark
" let ayucolor="mirage"
" colorscheme ayu
" colorscheme iceberg
colorscheme Atelier_PlateauLight


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-z> :NERDTree<CR>
nnoremap <C-x> :NERDTreeToggle<CR>


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-z> :NERDTree<CR>
nnoremap <C-x> :NERDTreeToggle<CR>


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
```

## Fast binds for neovim
```
esc = visual mode
: = console mode
i = input mode
```

<b>Visual mode</b>
```
k = arrow up
j = arrow down
l = arrow right
h = arrow left
a = 1 symbol right and turn input mode
A = go in end line and turn input mode
o = create new under line and turn input mode
O = create new upper line and turn input mode
gg = enter in start line
G = go in end line
w = go in next word
b = go in previous word
u = Ctrl+Z
right click = Ctrl+V
[num][command] = command is executed num times (5l = go 5 symbol right)
/[word] - find element (/555 - find 555)
m[name] - create mark (mx - new mark with name x)
`[name] - go in mark (`x - go in mark x)
v + selection + x = delete selection
dd = delete line
cw = edit word
yy = copy line
y + selection = copy selection
p = put line
```
<b>Console mode</b>
```
:q! = close file without saving
:q = close file
:w = write file
:wq = write and quit
:so % set init.vim
:PlugInstall
```
