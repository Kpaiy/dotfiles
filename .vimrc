set t_Co=256

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Style
Plugin 'dylanaraps/wal.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'maximbaz/lightline-ale'
Plugin 'tpope/vim-fugitive'
" Linter
Plugin 'w0rp/ale'
" Indent Guidlines
Plugin 'Yggdroot/indentLine'
" TypeScript
Plugin 'leafgarland/typescript-vim'
" React extensions
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'peitalin/vim-jsx-typescript'
" Rust
Plugin 'rust-lang/rust.vim'
" Other
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on

set laststatus=2

hi Normal guibg=NONE ctermbg=NONE

set noshowmode

set updatetime=750

inoremap <S-Tab> <C-d>

" tab keybinds
map <C-E> :tabc <Enter>
map <C-T> :tabnew <Enter>
map <C-D> :Vex <Enter>

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

let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}

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
