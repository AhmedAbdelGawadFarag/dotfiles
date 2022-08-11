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

Plug 'morhetz/gruvbox'

call plug#end()



