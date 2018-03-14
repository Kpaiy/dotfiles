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
Plugin 'Valloric/YouCompleteMe'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()
filetype plugin indent on

set laststatus=2

colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE

set noshowmode

set updatetime=750

inoremap <S-Tab> <C-d>

let g:lightline = {
\  'colorscheme': 'onedark'
\ }

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
