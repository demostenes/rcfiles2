" plug-vim configuration

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
"Plug 'hdima/python-syntax'
Plug 'python-mode/python-mode'
"Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
call plug#end()

" ------------------------------------------------------------------------
" the rest of config
" ------------------------------------------------------------------------

" Note: This line MUST come before any <leader> mappings
let mapleader=","

set nobackup

colorscheme nord

set nocompatible

filetype on
filetype plugin on
filetype indent on
syntax on

set number
set ruler
set nowrap
set laststatus=2
set cmdheight=2
set encoding=utf-8
set cursorline

set autoread " Automatically reload changes if detected
set wildmenu " Turn on WiLd menu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set hidden " Change buffer - without saving
set history=768 " Number of things to remember in history.
set cf " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite " Writes on make/shell commands
set timeoutlen=350 " Time to wait for a command (after leader for example)
set foldlevelstart=99 " Remove folds
set formatoptions=crql

set tabstop=4
set backspace=2 " Delete everything with backspace
set shiftwidth=4 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2
set softtabstop=4

set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class

set showmatch " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

set noerrorbells
set novisualbell
set t_vb=

set mousehide " Hide mouse after chars typed
"set mouse=a " Mouse in all modes

set complete=.,w,b,u,U

set showcmd
set showmode



" fuzzyfinder buffer
nmap <F11> :FufBuffer<CR>
imap <F11> <C-O>:FufBuffer<CR>

" fuzzyfinder file
nmap <F10> :FufFile<CR>
imap <F10> <C-O>:FufFile<CR>

" ostatnio widziane bufory
nmap <F12> :b#<CR>
imap <F12> <C-O>:b#<CR>

" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1

