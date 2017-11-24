set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/youcompleteme'

syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
let g:javascript_plugin_jsdoc = 1
