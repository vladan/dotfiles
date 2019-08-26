let g:ale_completion_enabled = 1
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"

" Enable warnings about trailing whitespace for all files.
let b:ale_warn_about_trailing_whitespace = 1

nmap <leader>e :ALEDetail <cr>

" ALE colors
highlight ALEWarning ctermbg=Yellow
highlight ALEWarning ctermfg=Black
highlight ALEError ctermbg=DarkRed
highlight ALEError ctermfg=White
