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

colorscheme wal

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"


set sessionoptions=blank,winsize,tabpages,resize
