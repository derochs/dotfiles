set nocompatible
filetype off

" set runtime path for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" PLUGINS

" Monokai theme
Plugin 'git://github.com/crusoexia/vim-monokai.git'

" Java highlighting
Plugin 'rudes/vim-java'

" Javascript highlighting
Plugin 'git://github.com/pangloss/vim-javascript.git'

" Typescript highlighting
Plugin 'git://github.com/leafgarland/typescript-vim'

" autoclosing HTML tags
Plugin 'alvan/vim-closetag'

" vim airline
Plugin 'vim-airline/vim-airline'

call vundle#end()

" Indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" set theme
syntax on
colorscheme monokai

" autoclosing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" tab indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
