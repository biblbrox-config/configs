" noremap jk <ESC>
set t_Co=256
let mapleader = "<Space>"
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set backspace=indent,eol,start
set encoding=utf-8

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'begriffs/haskell-vim-now'
call plug#end()

" Nerd tree config
map <C-n> :NERDTreeToggle<CR>
" End nerd tree config

set number
colorscheme darcula
" colorscheme fresh
let g:ycm_python_binary_path = '/usr/bin/python3'

set tabstop=4    " - tabs are at proper location
set expandtab    " - don't use actual tab character (ctrl-v)
set shiftwidth=4 " - indenting is 4 spaces
set autoindent   " - turns it on
set smartindent  " - does the right thing (mostly) in programs
set cindent      " - stricter rules for C programs
