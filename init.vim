" map leader key to Space
let mapleader = " "

""" --- Plugins ---

call plug#begin()

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'
" Nerd tree
Plug 'preservim/nerdtree'
" Surround words with " ,' ,( ,{ ,etc....
Plug 'tpope/vim-surround'

Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' " Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'ayu-theme/ayu-vim' "

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()


"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5


" if pattern contain lower case letter it's case insensitive
" if uppercase letter it's case sensitive
set ignorecase
set smartcase

" Do incremental searching.
set incsearch

" Don't use Ex mode, use Q for formatting.
map Q gq

" Map ESC to Caps lock key
inoremap jj <Esc>
set timeoutlen=2000

" Map H to go to beginning of non white character of the line
noremap H ^

" Map L to go to end of non white character of the line
noremap L $

" Map S to replace (substitute) the word under cursor with the last yanked/deleted word.
nnoremap S "_diwP

" Map leader<p> to last yanked register
map <leader>p "0p


" Nerd tree shortcuts
" m open menu bar on the tree selection.
" n	Create File
" N	Create Package
" d	Delete file or directory
" q close the tree window.
" p traverse to the parent of the current selection.
" CTRL+N find current file in the tree and set focus on the tree.
noremap <C-n> :NERDTreeFind<cr>

" Type s + <brackets> to surround current word (word under cursor) with the desired brackets.
nmap s ysiw

" CTRL + l to go to next buffer
nmap <C-l> :bnext<cr> 

" CTRL + h to go to previous buffer
nmap <C-h> :bprev<cr> 

" Surround the selected words with brackets in visual mode.
vmap s S

"Show line numbers
set number

"Set encoding to utf
set encoding=utf-8

"Type undo to undo all the changes you did to the file
set undofile

set nocompatible              " be iMproved, required
filetype off                  " required

set termguicolors     " enable true colors support

set background=dark

let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Search in the files history list
nnoremap <C-e> :History<CR>

" Bufferline extension
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

"Syntax highlighting
syntax on
