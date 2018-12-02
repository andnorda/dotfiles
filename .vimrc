call plug#begin('~/.vim/plugged')

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
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

call plug#end()

nmap <C-P> :Files<CR>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

colorscheme gruvbox

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
nmap <silent> <C-N> <Plug>(ale_next_wrap)
nmap <silent> <C-M> <Plug>(ale_previous_wrap)

" #noNERDTree
let g:netrw_liststyle = 3

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

set tags=tags
