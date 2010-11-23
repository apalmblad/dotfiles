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

map <leader>t :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
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
