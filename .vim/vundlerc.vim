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

" Scala config
Plugin 'derekwyatt/vim-scala'
let g:scala_scaladoc_indent = 1

" Elm
Plugin 'elmcast/elm-vim'
" Rust
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer' " Rust Language Server
" RST
Plugin 'Rykka/riv.vim' " rst formatter and highlighter
" Python
Plugin 'vim-scripts/indentpython.vim'
" Async Lint Engine
Plugin 'w0rp/ale'

call vundle#end()
