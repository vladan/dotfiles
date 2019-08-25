nmap gd <Plug>(rust-def)
nmap gs <Plug>(rust-def-split)
nmap gx <Plug>(rust-def-vertical)
nmap <leader>gd <Plug>(rust-doc)
set  number

" linting options
let g:ale_rust_cargo_use_clippy = 1 " installed with `rustup component add clippy-preview`
let g:rustfmt_autosave = 1 " installed with `rustup component add rustfmt`
