hi clear SpellBad
hi SpellBad cterm=bold ctermbg=darkred ctermfg=white

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
au BufNewFile,BufRead *.escad,*.scad setf c
au BufNewFile,BufRead *.pde,*.ino setf cpp

filetype plugin on

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
