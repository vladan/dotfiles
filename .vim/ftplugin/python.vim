set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set number

" Enable folding on indent
set foldmethod=indent
set foldlevel=99

" Lint and check types
let b:ale_linters = ['mypy', 'pyls', 'pylint']
let g:ale_lint_on_save = 1
let g:ale_list_window_size = 20
" Fix syntax with autopep8.
let b:ale_fixers = ['autopep8']
let g:ale_fix_on_save = 1
" Use .venv as a global default
let g:ale_virtualenv_dir_names = ['.venv']
