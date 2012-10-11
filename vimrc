hi clear SpellBad
hi SpellBad cterm=bold ctermbg=darkred ctermfg=white

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
au BufNewFile,BufRead *.escad,*.scad setf c
au BufNewFile,BufRead *.pde,*.ino setf cpp
autocmd BufReadPost * :GuessIndent

let g:Powerline_symbols = 'fancy'
set laststatus=2

let b:jshint_disabled = 1

filetype plugin on
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
