let mapleader = ","

set sts=2
set smarttab
set number
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol

set hlsearch
syntax on

set hidden

let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

set history=1000

runtime macros/matchit.vimo

set wildmenu

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set shortmess=atIo
set visualbell
set t_Co=256
colors zenburn

set ruler

filetype plugin on

map <F5> :NERDTreeToggle<CR>
set pastetoggle=<F2>
set nobackup
set noswapfile

if !exists( 'RubyFunctionHeader' )
  function RubyFunctionHeader()
    let line = getline('.')
    let indent1 = indent('.')
    let func_name = substitute( substitute( substitute( substitute( line, '\s\+def ', '','' ), '\s+$','', '' ), '^self\.', '', '' ), '(.*)$','', '')
    echo func_name
    let newline = repeat( indent1, ' ' ) . '# ' . repeat( '-', 80 - indent1 - strlen( func_name ) - 3 ) . ' ' . func_name
    execute "normal O" . newline . "\<Esc>jo" . repeat( indent1, ' ' ) . "end\<Esc>ko\<tab>" 
  endfunction
endif
noremap fh :call RubyFunctionHeader()<CR>
imap <C-f> <Esc>:call RubyFunctionHeader()<CR>
call pathogen#infect()

call plug#begin('~/.vim/plugged')
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <silent> <C-p> :FZF<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Matchit
au FileType html,eruby,rb,css,js,ts,xml runtime! macros/matchit.vim

