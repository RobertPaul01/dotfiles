if &shell =~# 'fish$'
    set shell=sh
    
endif

set runtimepath^=~/.vim/bundle/vim-fish/
set runtimepath^=~/.vim/bundle/vim-airline/
set runtimepath^=~/.vim/bundle/idris-vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim/
syntax on
filetype plugin indent on
set number
set mouse=a
set clipboard=unnamed
set backspace=indent,eol,start

set tabstop=2
set expandtab
set shiftwidth=2

autocmd FileType cpp ClangFormatAutoEnable

colorscheme taste

inoremap <F1> <esc>:w<cr>

map <C-o> :CtrlP<CR>

