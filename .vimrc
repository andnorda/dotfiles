setlocal foldmethod=marker

call plug#begin('~/.vim/plugged')

" {{{ linting & fixing

Plug 'w0rp/ale'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

let g:ale_fix_on_save = 1

" }}}

" {{{ file explorer

Plug 'scrooloose/nerdtree'

let NERDTreeShowHidden=1

" }}}

" {{{ status line

Plug 'vim-airline/vim-airline'

" }}}

" {{{ rainbow parentheses

Plug 'luochen1990/rainbow'

let g:rainbow_active = 1

" }}}

" {{{ javascript

Plug 'pangloss/vim-javascript'

" }}}

" {{{ colorscheme

Plug 'morhetz/gruvbox'

" }}}

" {{{ fuzzy finder

Plug 'ctrlpvim/ctrlp.vim'

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" }}}

call plug#end()

colorscheme gruvbox

set backspace=indent,eol,start
set number
set relativenumber
set nowrap
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp/
