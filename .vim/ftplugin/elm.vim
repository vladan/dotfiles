" Elm compiler, auto formatting and jump to definition.
"
" - Install elm and make an executable ``elm-make`` that's in PATH
"   (if elm > " 0.18).
" - Install elm-format and put it in in PATH.
" - Ctags for goto definition. :(
"
set number

let b:ale_linters = ['make']
let b:ale_fixers = ['elm-format']
let g:ale_elm_make_use_global = 1
let g:elm_setup_keybindings = 0

nnoremap gd <C-]>

autocmd BufWritePost *.elm call system('ctags -R . ~/.elm/0.19.0/') |
