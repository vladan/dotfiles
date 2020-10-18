call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'andreypopp/vim-colors-plain'

call plug#end()

let g:deoplete#enable_at_startup=1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Enable alignment
let g:neoformat_basic_format_align=1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab=1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim=1
let g:neoformat_try_formatprg=0

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled=0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers="right"


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
set foldlevel=79

" Lint and check types
let b:ale_linters=['mypy', 'pyls', 'pylint']
let g:ale_lint_on_save=1
let g:ale_list_window_size=20
" Fix syntax with autopep8.
" let b:ale_fixers=['autopep8']
" let g:ale_fix_on_save=1
" Use .venv as a global default
let g:ale_virtualenv_dir_names=['.venv']

let g:ale_completion_enabled=1
let g:ale_sign_error="✗"
let g:ale_sign_warning="⚠"

" Enable warnings about trailing whitespace for all files.
let b:ale_warn_about_trailing_whitespace=1

nmap <leader>e: ALEDetail<CR>

" ALE colors
highlight ALEWarning ctermbg=Yellow
highlight ALEWarning ctermfg=Black
highlight ALEError ctermbg=DarkRed
highlight ALEError ctermfg=White

" Use TAB to switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>

" Highlight trailing whitespace (darker red) and remove all with Ctrl+k
highlight WhitespaceEOL ctermbg=red guibg=#ab0d0d
match WhitespaceEOL /\s\+\%#\@<!$/
nnoremap <C-k> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Much better with Tomorrow Night Bright color theme set in alacritty
set background=dark
" colorscheme plain

highlight Search ctermfg=Black
highlight Comment ctermfg=Grey
highlight SignColumn ctermbg=236
highlight LineNr ctermfg=244
highlight LineNr ctermbg=232
highlight Folded ctermbg=DarkGreen
highlight Folded ctermfg=Black

highlight GitGutterAdd    guibg=#22ff22 guifg=#000000 ctermfg=Green
highlight GitGutterChange guibg=#bbbb00 guifg=#000000 ctermfg=Yellow
highlight GitGutterDelete guibg=#ff2222 guifg=#000000 ctermfg=DarkRed

let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='-+'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_removed_first_line='^^'
let g:gitgutter_sign_modified_removed='--'
let g:gitgutter_map_keys=0

" Toggles on different plugins/modes
noremap  <F1> :ToggleMouse<CR>
inoremap <F1> <Esc>:ToggleMouse<CR>a
nmap <F3> :set nonumber!<CR>
nmap <F4> :GitGutterBufferToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
set pastetoggle=<F2>

" Maintain undo history between sessions
if !isdirectory("/tmp/.vim-undo-dir")
call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile
