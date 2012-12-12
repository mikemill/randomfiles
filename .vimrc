"***** Vundle *********
" Vundle {{{

" Required for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'godlygeek/csapprox'
Bundle 'flazz/vim-colorschemes'

" Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
" Bundle 'mattn/zencoding-vim'
" Bundle 'xolox/vim-session'
" Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/python.vim'

" " Language plugins
Bundle 'fs111/pydoc.vim'
Bundle 'tpope/vim-markdown'
Bundle 'nvie/vim-flake8'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
" Bundle 'oscarh/vimerl'

" }}}

"***** General ******
" General options {{{

set viminfo='10,\"100,:20,%,n~/.viminfo
set hidden
set t_Co=256
syntax on

colorscheme freya
set background=dark

set colorcolumn=80
highlight ColorColumn ctermbg=black guibg=black

" Highlight space at the end of a line
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=black guibg=black
highlight ExtraWhitespace ctermbg=black guibg=black
match ExtraWhitespace /\s\+$/

set so=7

set ignorecase
set smartcase

set number numberwidth=2
set nowrap

set nolazyredraw

set incsearch

set hlsearch

set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set mouse=a
set bs=2

set showmatch
set foldmethod=syntax
set clipboard=unnamed
"}}}

" Mappings {{{
let mapleader = ","

nnoremap <leader>to <esc>:NERDTreeFocus<cr>
"}}}

" SQL {{{
let g:sql_type_default = 'mysql'
"}}}

" Python {{{
au! FileType python setl nosmartindent
au! FileType python map <buffer> <S-e> :w<CR>:!/usr/bin/env python %<CR>

" Run flakes8 on save
autocmd BufWritePost *.py call Flake8()

let g:pydoc_open_cmd = 'vsplit'

let g:flake8_ignore='E221'
"}}}

" PHP {{{
filetype plugin indent on
" }}}

" Unit Testing {{{
au FileType python nnoremap <leader>ua <esc>:!source bin/activate && nosetests -s -d %:p:.<cr>
au FileType python nnoremap <leader>uf <esc>:!source bin/activate && nosetests -s -d %:p:. -i <cword><cr>
" }}}
