if &shell =~# 'fish$'
    set shell=sh
    
endif

set runtimepath^=~/.vim/bundle/vim-fish/
filetype off
filetype plugin indent on
syntax enable
set number
set mouse=a
set clipboard=unnamed
set backspace=indent,eol,start

set tabstop=4
set expandtab
set shiftwidth=4

