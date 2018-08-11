set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set textwidth=80

set number
set hlsearch
"set mouse=a

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'rust-lang/rust.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'Yggdroot/indentLine'
Plugin 'leafgarland/typescript-vim'
Plugin 'w0rp/ale'
call vundle#end()
filetype plugin indent on

set laststatus=2

hi Normal guibg=NONE ctermbg=NONE

set noshowmode

set updatetime=750

inoremap <S-Tab> <C-d>

let g:lightline = {
\  'colorscheme': 'wal'
\ }

let g:indentLine_char = '▏'

colorscheme wal

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

set sessionoptions=blank,winsize,tabpages,resize

" Project tree settings
" https://shapeshed.com/vim-netrw/
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
