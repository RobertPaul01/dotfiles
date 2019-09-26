if &shell =~# 'fish$'
    set shell=sh
    
endif

set runtimepath^=~/.vim/bundle/vim-fish/
set runtimepath^=~/.vim/bundle/vim-airline/
set runtimepath^=~/.vim/bundle/idris-vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim/
"set runtimepath^=~/.vim/bundle/syntastic/
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

"colorscheme taste

inoremap <F1> <esc>:w<cr>

augroup mySyntastic
  " tell syntastic to always stick any detected errors into the location-list
  au FileType sml let g:syntastic_always_populate_loc_list = 1

  " automatically open and/or close the location-list
  au FileType sml let g:syntastic_auto_loc_list = 1
augroup END

" press <Leader>S (i.e., \S) to not automatically check for errors
nnoremap <Leader>S :SyntasticToggleMode<CR>

function ConfigGitCommit()
  set spell spelllang=en_us
endfun
autocmd FileType gitcommit call ConfigGitCommit()

set clipboard=unnamedplus

