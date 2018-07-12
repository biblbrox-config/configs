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
Plug 'sjl/badwolf'
Plug 'chriskempson/base16-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/vim-auto-save'
Plug 'tpope/vim-fugitive' 
Plug 'chrisbra/Colorizer'
call plug#end()

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
let g:auto_save_silent = 1  " do not display the auto-save notification

let NERDTreeShowHidden=1

" Nerd tree config
map <C-n> :NERDTreeToggle<CR>
" End nerd tree config

" Nerd tree midifiable
set modifiable 

set number
colorscheme gruvbox
set background=dark
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set tabstop=4    " - tabs are at proper location
set expandtab    " - don't use actual tab character (ctrl-v)
set shiftwidth=4 " - indenting is 4 spaces
set autoindent   " - turns it on
set smartindent  " - does the right thing (mostly) in programs
set cindent      " - stricter rules for C programs

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

let g:jellybeans_use_term_italics = 1

" C++ enchaned highliting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" autogenerate c/c++ header gates
function! s:insert_gates()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal! i#ifndef " . gatename
    execute "normal! o#define " . gatename . " "
    execute "normal! Go#endif /* " . gatename . " */"
    normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
