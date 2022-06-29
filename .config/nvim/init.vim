syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set smartindent
set relativenumber
set number
"set cursorline
set history=1000
set autoread
set mouse=a
set ruler
set showmatch
set encoding=utf8
set noswapfile
set smartcase
set splitbelow
set splitright
" set list listchars+=space:• " 빈칸을 • 로 표시
" set listchars=tab:>- " 탭을 >- 로
" set listchars=tab:├─
" set listchars+=trail:⋄ " 뒤 공백을 ⋄ 로

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
set bs=indent,eol,start

""""""""""""""""""""""""""
" Plugins                "
""""""""""""""""""""""""""
call plug#begin()

source $HOME/.config/nvim/plugins/polyglot.vim
source $HOME/.config/nvim/plugins/multiple-cursors.vim
source $HOME/.config/nvim/plugins/go.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/tagbar.vim
source $HOME/.config/nvim/plugins/fugitive.vim
source $HOME/.config/nvim/plugins/surround.vim
source $HOME/.config/nvim/plugins/gitgutter.vim
source $HOME/.config/nvim/plugins/commentary.vim
" source $HOME/.config/nvim/plugins/gruvbox-material.vim
source $HOME/.config/nvim/plugins/onedark.vim


call plug#end()

colorscheme onedark
