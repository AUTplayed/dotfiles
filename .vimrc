
filetype plugin on
filetype indent on
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Use tabs instead of spaces
set noexpandtab

" Be smart when using tabs ;)
set smarttab

set autoindent

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set enc=utf-8
set fileencoding=utf-8

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/youcompleteme'
Plugin 'airblade/vim-gitgutter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

let g:airline_symbols_ascii=1

syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
let g:javascript_plugin_jsdoc = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

filetype plugin indent on
let blacklist = ['markdown', 'tex']
au BufWrite * if index(blacklist, &ft) < 0 | :Autoformat
set updatetime=2000

au BufRead,BufNewFile *.tex,*.md set noautoindent
