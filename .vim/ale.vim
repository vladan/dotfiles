let g:ale_linters = {}
let g:ale_completion_enabled = 1
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"

" Rust linting options
let g:ale_rust_cargo_use_clippy = 1 " installed with `rustup component add clippy-preview`
let g:rustfmt_autosave = 1 " installed with `rustup component add rustfmt`

" ALE colors
highlight ALEWarning ctermbg=Yellow
highlight ALEWarning ctermfg=Black
highlight ALEError ctermbg=DarkRed
highlight ALEError ctermfg=White
