set t_Co=256

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'dylanaraps/wal.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'maximbaz/lightline-ale'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'rust-lang/rust.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'Yggdroot/indentLine'
Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on

set laststatus=2

hi Normal guibg=NONE ctermbg=NONE

set noshowmode

set updatetime=750

inoremap <S-Tab> <C-d>

colorscheme wal

let g:lightline = {
    \ 'colorscheme': 'wal',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

let g:indentLine_char = '▏'

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline#ale#indicator_checking = 'Linting...'
let g:lightline#ale#indicator_ok = '    OK    '

let g:lightline.component_type = {
      \     'linter_checking': 'okay',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'okay',
      \ }

let g:lightline.active = { 'right': [
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
      \              [ 'void' ],
      \              [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ]
      \              ] }

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set textwidth=80

set number
set hlsearch

set mouse="c"

" Project tree settings
" https://shapeshed.com/vim-netrw/
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

syntax on
set backspace=indent,eol,start
