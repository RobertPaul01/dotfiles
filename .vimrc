set runtimepath^=~/.vim/bundle/vim-fish/
filetype plugin indent on
syntax enable
set number
set mouse=a
set clipboard=unnamed
set backspace=indent,eol,start

if &shell =~# 'fish$'
    set shell=sh
endif

