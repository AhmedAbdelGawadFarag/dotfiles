" disable default vim tree to avoid conflict with nvim-tree
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" map leader key to Space
let mapleader = " "

""" --- Plugins ---

call plug#begin()

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'

" Surround words with " ,' ,( ,{ ,etc....
Plug 'tpope/vim-surround'

Plug 'itchyny/lightline.vim'

Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' " Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'ayu-theme/ayu-vim' "

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

Plug 'lewis6991/gitsigns.nvim'

Plug 'voldikss/vim-floaterm'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'tpope/vim-commentary', {'branch': 'master'}

Plug 'rebelot/kanagawa.nvim'

Plug 'wellle/targets.vim'

Plug 'kshenoy/vim-signature'

" HTTP Rest API
Plug 'diepm/vim-rest-console'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }

Plug 'simeji/winresizer'

Plug 'rmagatti/auto-session'

Plug 'yegappan/mru'

Plug 'nvim-tree/nvim-tree.lua'


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


" CTRL+N find current file in the tree and set focus on the tree.
noremap <C-n> :NvimTreeFindFile<cr>

" leader+e open the tree explorer.
noremap <leader>e :NvimTreeToggle<cr>

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

colorscheme kanagawa-wave

" Search in the files history list
nnoremap <C-e> :Telescope oldfiles<CR>

" use space+f+f to find files.
nnoremap <leader>ff :Telescope find_files<CR>

" use space+f+g to search inside the files.
nnoremap <leader>fg :Telescope live_grep<CR>


:tnoremap jj <C-\><C-n>

" Bufferline extension
set termguicolors

"Syntax highlighting
syntax on

set ma

"ctrl + w + = to zoom current splitted window
noremap <C-w>= <c-w>_ \| <c-w>\|

" ctrl + w + - to zoom out current splitted window and make all window equal in size
noremap <C-w>- <c-w>=

" Quit current opened buffer 
noremap  qw :bd<CR>

" Going to next/prev wrapped lines with j/k
map j gj
map k gk

" Open split on the right instead of default left vim behaviour
set splitright

" Open split on the below instead of default up vim behaviour
set splitbelow


set history=1000

set clipboard=unnamedplus


" alt-j to visual multi cursor with similar to (alt-j) in intelli
" n/N to get next/previous occurrence
" [ to select next/previous cursor
" q to skip current and get next occurrence
" Q to remove current cursor/selection

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<M-j>'
let g:VM_maps['Find Subword Under'] = '<M-j>'

set swapfile

" map ctrl + / to comment code
nmap <C-_> gcc
vmap <C-_> gc


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


let g:lightline.enable = {'statusline': 1,'tabline': 0}

set fileformats=unix,dos

" HTTP REST Client
let g:vrc_set_default_mapping = 0
let g:vrc_response_default_content_type = 'application/json'
let g:vrc_vrc_output_buffer_name = '_OUTPUT.json'
let g:vrc_auto_format_response_patterns = {'json': 'jq'}
" execute http request 
noremap <leader>xr :call VrcQuery()<cr>

" use alt + w to resize window splits.
let g:winresizer_start_key = '<M-w>'

" space + s + s to search the saved sessions.
noremap <leader>ss :SessionSearch<CR>

" move tab to the left.
nnoremap <leader>bh :BufferLineMovePrev<CR>

" move tab to the right.
nnoremap <leader>bl :BufferLineMoveNext<CR>


lua << EOF

require("bufferline").setup{}

require("gitsigns").setup{}

require('auto-session').setup{
show_auto_restore_notif = true
}

-- Disable showing the tree on startup to avoid conflict with auto_session
require("nvim-tree").setup({
	hijack_directories = {
	  enable = false,
	  auto_open = false,
	}
})

EOF
