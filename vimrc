hi clear SpellBad
hi SpellBad cterm=bold ctermbg=darkred ctermfg=white

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
au BufNewFile,BufRead *.escad,*.scad setf javascript
au BufNewFile,BufRead *.pde,*.ino setf cpp
autocmd BufReadPost * :GuessIndent

"for js
let g:jsbeautify = {'indent_size': 4, 'indent_char': ' ', 'max_char': 78, 'brace_style': 'end-expand'}
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType html let b:closetag_html_style=1
"for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let g:Powerline_symbols = 'fancy'
set laststatus=2

let g:gist_detect_filetype = 1

let g:SuperTabDefaultCompletionType = "context"

filetype plugin on
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

set background="dark"
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

function! Gadd()
    w
    !git add %
endfunction
command! Gadd call Gadd()

function! Gpush()
    !git push
endfunction
command! Gpush call Gpush()

function! Sprunge()
    w !curl -F 'sprunge=<-' sprunge.us
endfunction
command! Sprunge call Sprunge()

function! JSONify()
    1,$!node -e "eval('var data=' + require('fs').readFileSync('/dev/stdin', 'utf-8')); console.log(JSON.stringify(data, null, 4));"
    call JsBeautify()
endfunction
autocmd FileType javascript command! JSONify call JSONify()
