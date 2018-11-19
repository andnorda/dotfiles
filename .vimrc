call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'wincent/terminus'

call plug#end()

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_fix_on_save = 1

let NERDTreeShowHidden=1

let g:rainbow_active = 1

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

colorscheme gruvbox

set backspace=indent,eol,start
set number
set relativenumber
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set backupdir=~/.vim/tmp/
set directory=~/.vim/tmp/
set hlsearch
set incsearch

" complete current tag on </
inoremap <buffer> </ </<C-x><C-o><C-y>
