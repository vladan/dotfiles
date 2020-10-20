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
Plug 'Lokaltog/vim-monotone'
Plug 'ncm2/float-preview.nvim'

call plug#end()

" Sane defaults.
set mouse=
syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
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

" Toggles on different plugins/modes
noremap  <F1> :ToggleMouse<CR>
inoremap <F1> <Esc>:ToggleMouse<CR>a
nmap <F3> :set nonumber!<CR>
nmap <F4> :GitGutterBufferToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
set pastetoggle=<F2>

" Enable vimrc files per project
set exrc
" Disable unsafe commands in project vimrc
set secure

set wildignorecase      " Ignore case in command completion
set laststatus=2        " Always show statusline

" Search settings
set smartcase  " If an uppercase letter is the query, be case sensitive
set incsearch  " Highlight matches while typing query
set hlsearch   " Highlight all search matches

" Highlight matching brackets
set showmatch
set mps+=<:> " Also, match < and >


" COLORS
" Much better with Tomorrow Night Bright color theme set in alacritty
set background=dark
" Monochrome colorscheme config
let g:monotone_color = [120, 100, 70] " Sets theme color to bright green
let g:monotone_secondary_hue_offset = 200 " Offset secondary colors by 200 degrees
let g:monotone_emphasize_comments = 1 " Emphasize comments

highlight Search ctermfg=Black
highlight Comment ctermfg=Grey
highlight SignColumn ctermbg=236
highlight LineNr ctermfg=244
highlight LineNr ctermbg=232
highlight Folded ctermbg=DarkGreen
highlight Folded ctermfg=Black
highlight MatchParen cterm=bold ctermbg=magenta ctermfg=none


" Filetype indents and line lengths
autocmd BufEnter rst,md         set textwidth=79
autocmd BufEnter html,yaml,css  set softtabstop=2 shiftwidth=2

" Enable alignment
let g:neoformat_basic_format_align=1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab=1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim=1
let g:neoformat_try_formatprg=0

" Global ALE config
nmap <leader>e: ALEDetail<CR>
let b:ale_linters=[] " file type linters defined in ftplugin/*.vim
let g:ale_lint_on_save=1
let g:ale_list_window_size=20
let g:ale_completion_enabled=1
let g:ale_set_signs = 1
let g:ale_sign_error="✗"
let g:ale_sign_warning="⚠"
let b:ale_warn_about_trailing_whitespace=1
highlight ALEWarning ctermbg=Yellow ctermfg=None guibg=Yellow gui=None cterm=Underline
highlight ALEError ctermbg=Red ctermfg=Black cterm=underline

" Use TAB to switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>

" Highlight trailing whitespace (darker red) and remove all with Ctrl+k
highlight WhitespaceEOL ctermbg=red guibg=#ab0d0d
match WhitespaceEOL /\s\+\%#\@<!$/
nnoremap <C-k> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Git Gutter config
highlight GitGutterAdd    guibg=#22ff22 guifg=#000000 ctermfg=Green
highlight GitGutterChange guibg=#bbbb00 guifg=#000000 ctermfg=Yellow
highlight GitGutterDelete guibg=#ff2222 guifg=#000000 ctermfg=DarkRed

let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='-+'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_removed_first_line='^^'
let g:gitgutter_sign_modified_removed='--'
let g:gitgutter_map_keys=0

" Maintain undo history between sessions
if !isdirectory("/tmp/.vim-undo-dir")
call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile
