call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-afterimage'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'scrooloose/nerdtree'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'moll/vim-node'
Plug 'osyo-manga/vim-anzu'

call plug#end()

let mapleader = " "

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_mode_map = {
\ '__'     : '-',
\ 'c'      : 'C',
\ 'i'      : 'I',
\ 'ic'     : 'I',
\ 'ix'     : 'I',
\ 'n'      : 'N',
\ 'multi'  : 'M',
\ 'ni'     : 'N',
\ 'no'     : 'N',
\ 'R'      : 'R',
\ 'Rv'     : 'R',
\ 's'      : 'S',
\ 'S'      : 'S',
\ ''     : 'S',
\ 't'      : 'T',
\ 'v'      : 'V',
\ 'V'      : 'V',
\ ''     : 'V',
\ }
let g:airline_section_x = ''
let g:airline_section_b = ''

let g:jsx_ext_required = 0

nnoremap <C-P> :Files<CR>

let NERDTreeShowHidden=1
nnoremap <Leader>n :NERDTreeFind<cr>zz


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

colorscheme gruvbox

let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'python': ['yapf'],
\}

let g:ale_fix_on_save = 1
nnoremap <silent> <C-N> <Plug>(ale_next_wrap)
nnoremap <silent> <C-B> <Plug>(ale_previous_wrap)

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

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
set autowrite
set splitbelow
set splitright
set clipboard=unnamed

nnoremap - ddp
nnoremap _ ddkP
nnoremap <leader>ev :split $MYVIMRC<cr>G
nnoremap <leader>sv :source $MYVIMRC<cr>
