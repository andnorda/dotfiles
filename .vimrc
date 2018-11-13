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

" }}}

" {{{ status line

Plug 'vim-airline/vim-airline'

" }}}

" {{{ rainbow parentheses

Plug 'luochen1990/rainbow'

let g:rainbow_active = 1

" }}}

call plug#end()

set backspace=indent,eol,start
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp/
