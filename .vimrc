"-------------------------------------------------------------- 
"
" *  Vim configuration for Web development
" *  Adrian Karbowniczyn (s1amber)
" => Fork me on Github https://github.com/adrian-karbowniczyn/
"
"--------------------------------------------------------------                                                                                                 


"--------------------------------------------------------------
" => Plugins 
"--------------------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'shime/vim-livedown'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
"Plug 'zxqfl/tabnine-vim'

call plug#end()

" Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" Rainbow 
let g:rainbow_active = 1 

"--------------------------------------------------------------
" => Colors 
"--------------------------------------------------------------

set termguicolors
colorscheme dracula                 " Theme
syntax on                           " Syntax highlight

"--------------------------------------------------------------
" => General 
"--------------------------------------------------------------

set nocompatible                    " Not compatible with the old-fashion vi mode
set history=50                      " Keep 50 lines of command line history
set ruler                           " Show the cursor position all the time
set autoread                        " Auto read when file is changed from outside
set number                          " Always show line numbers
set hlsearch                        " Search highlighting  
set incsearch                       " Show search matches as you type
set wildmode=longest,list,full      " Show a list when pressing tab and complete
set showmatch                       " Cursor shows matching ) and }
set smarttab                        " Insert tabs on the start of a line according to context

set nobackup                        " Do not keep backup files, 
set noswapfile                      " Do not write swap files 

filetype on                         " Enable filetype detection        
filetype plugin on                  " Enable filetype-specific plugins
filetype indent on                  " Enable filetype-specific indenting

" Auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

"--------------------------------------------------------------
" => Indentation
"--------------------------------------------------------------

set tabstop=4                       " A tab is four spaces
set shiftwidth=4                    " Number of spaces to use for autoindenting
set expandtab                       " Always set autoindenting on
set autoindent                      " Always set autoindenting on

"--------------------------------------------------------------
" => Custom mappings
"--------------------------------------------------------------

" Open NerdTree
map <F2> :NERDTreeToggle<CR>

" Fix indent
map <F7> gg=G<C-o><C-o> 
