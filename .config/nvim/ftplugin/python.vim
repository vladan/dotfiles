set textwidth=79
colorscheme monotone

let b:ale_linters=['mypy', 'pyls', 'pylint']
" Fix syntax with autopep8.
let b:ale_fixers=['autopep8']
let g:ale_fix_on_save=1
" Use .venv as a global default
let g:ale_virtualenv_dir_names=['.venv']

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled=0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers="right"

let g:deoplete#enable_at_startup=1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Doesn't read this from init.vim, so add it here again
highlight MatchParen cterm=bold ctermbg=DarkCyan ctermfg=none
highlight ALEWarning ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black cterm=Underline
highlight ALEError ctermbg=Red ctermfg=Black guibg=Red guifg=Black cterm=Underline
