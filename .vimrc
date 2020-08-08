call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sheerun/vim-polyglot'
" Plug 'jparise/vim-graphql'
Plug 'peitalin/vim-jsx-typescript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
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
Plug 'moll/vim-node'
Plug 'osyo-manga/vim-anzu'

Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim'
Plug 'OmniSharp/omnisharp-vim'

call plug#end()

let mapleader = " "

filetype indent plugin on
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 3
augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

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
\   'cs': ['OmniSharp'],
\   'typescript': ['tslint'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'markdown': ['prettier'],
\   'python': ['yapf'],
\}

let g:ale_fix_on_save = 1
nnoremap <C-N> :ALENextWrap<cr>
nnoremap <C-B> :ALEPreviousWrap<cr>

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

nnoremap _ ddkP
nnoremap <leader>ev :split $MYVIMRC<cr>G
nnoremap <leader>sv :source $MYVIMRC<cr>

let g:NERDTreeMapJumpNextSibling="☻"
let g:NERDTreeMapJumpPrevSibling="☺"

let g:gutentags_file_list_command = 'rg --files'
