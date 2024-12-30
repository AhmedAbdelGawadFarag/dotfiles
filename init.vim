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

Plug 'tpope/vim-fugitive'

Plug 'lewis6991/gitsigns.nvim'

Plug 'voldikss/vim-floaterm'

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

" open terminal with leader + t
noremap <leader>t :vert term<cr>


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

" Tab to go to next buffer
nmap <Tab> :bnext<cr> 

" SHIFT + tab to go to previous buffer
nmap <S-Tab> :bprev<cr> 

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

:tnoremap jj <C-\><C-n>

" Bufferline extension
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

"Syntax highlighting
syntax on

set ma

"ctrl + w + = to zoom current splitted window
noremap <C-w>= <c-w>_ \| <c-w>\|

" ctrl + w + - to zoom out current splitted window and make all window equal in size
noremap <C-w>- <c-w>=

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Quit current opened buffer 
noremap  qw :bd<CR>


" Going to next/prev wrapped lines with j/k
map j gj
map k gk

" Open split on the right instead of default left vim behaviour
set splitright

" Open split on the below instead of default up vim behaviour
set splitbelow

lua << EOF
require("gitsigns").setup{}
EOF

set history=1000

set clipboard=unnamedplus
