hi clear SpellBad
hi SpellBad cterm=bold ctermbg=darkred ctermfg=white

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
au BufNewFile,BufRead *.escad,*.scad setf c
au BufNewFile,BufRead *.pde,*.ino setf cpp
autocmd BufReadPost * :GuessIndent

"for js
let g:jsbeautify = {'indent_size': 4, 'indent_char': ' ', 'max_char': 78, 'brace_style': 'expand-end'}
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let g:Powerline_symbols = 'fancy'
set laststatus=2

let b:jshint_disabled = 1

filetype plugin on
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

function! Gadd()
    w
    !git add %
endfunction
command! Gadd call Gadd()

function! Gpush()
    !git push
endfunction
command! Gpush call Gpush()
