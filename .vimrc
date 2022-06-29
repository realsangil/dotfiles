syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set smartindent
set relativenumber
set number
set cursorline
set history=1000
set autoread
set mouse=a
set ruler
set showmatch
set encoding=utf8

" clipboard settings
"
set clipboard=unnamed

noremap x "_x


""""""""""""""""""""""""""
" 검색 관련 옵션            "
""""""""""""""""""""""""""
" 검색어 하이라이트
"
set hlsearch 

" 한글자 입력할때마다 매치되는 부분 표시하기
"
set incsearch

" 검색어 대소문자 구분 안함
"
set ignorecase

filetype plugin indent on

let mapleader = ","
nmap <leader>ve :edit ~/.vimrc<CR>
set bs=indent,eol,start

""""""""""""""""""""""""""
" Plugins                "
""""""""""""""""""""""""""
call plug#begin()

source $HOME/.config/nvim/plugins/multiple-cursors.vim
Plug 'fatih/vim-go'

call plug#end()
