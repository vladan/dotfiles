" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :VundleInstall
"

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree config
Plugin 'scrooloose/nerdtree'
let NERDTreeHighlightCursorLine=1
let NERDTreeMouseMode=2
let NERDTreeIgnore=['\.pyc$', '\.jp?g$', '\.gif$', '\.png$', '\~$', '\.o', '\.log']

" Scala config
Plugin 'derekwyatt/vim-scala'
let g:scala_scaladoc_indent = 1

Plugin 'elmcast/elm-vim'
Plugin 'rust-lang/rust.vim'

" Async Lint Engine
Plugin 'w0rp/ale'
let g:ale_linters = {'rust': ['rustc']}
let g:ale_completion_enabled = 1

call vundle#end()
