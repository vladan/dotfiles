colorscheme monotone

let b:ale_linters=['analyzer']
" Fix syntax with rustfmt.
let b:ale_fixers=['rustfmt']
let g:ale_fix_on_save=1
let g:ale_rust_cargo_use_clippy = 1

" 'colorscheme' overrides highlights, so add it here again
highlight MatchParen cterm=bold ctermbg=DarkCyan ctermfg=none
