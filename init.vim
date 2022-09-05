"Neo vim configuration 

"Syntax highlighting
syntax on

"configs

"Show line numbers
set number

"Set encoding to utf
set encoding=utf-8

"Type undo to undo all the changes you did to the file
set undofile


"Smart search and ignore search case
set ignorecase
set smartcase

"Search while you are typing characters
set incsearch


"plugins
set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin()
" The default plugin directory will be as follows:
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

" Type :PlugInstall to install plugins

Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'agude/vim-eldar'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim' "
call plug#end()

set termguicolors     " enable true colors support

set background=dark

let ayucolor="dark"   " for dark version of theme
colorscheme ayu
