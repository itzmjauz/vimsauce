set tabstop=4
set shiftwidth=4
set expandtab
syntax on
au BufNewFile,BufRead *.escad,*.scad setf c
au BufNewFile,BufRead *.pde,*.ino setf cpp

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

let g:jsbeautify = {'indent_size': 4, 'indent_char': ' '}
let g:htmlbeautify = {'indent_size': 4, 'indent_char': ' ', 'max_char': 78, 'brace_style': 'expand', 'unformatted': ['a', 'sub', 'sup', 'b', 'i', 'u']}
let g:cssbeautify = {'indent_size': 4, 'indent_char': ' '}
