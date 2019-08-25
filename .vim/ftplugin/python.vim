" Python setup for VIM.
" Features:
"  - Autocompletion with pyls that opens documentation in another window while
"    moving through names.
"  - Static type checking with mypy.
"  - Autoformat on save with autopep8.
"  - PyLint for keeping score.
"
" Packages required for this config to work:
" pip3 install [--user] \
"     mypy \
"     pylint \
"     autopep8 \
"     git+https://github.com/palantir/python-language-server.git
"

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
