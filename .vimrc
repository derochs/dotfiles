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

" vim airline themes
Plugin 'vim-airline/vim-airline-themes'

" auto pairs
Plugin 'jiangmiao/auto-pairs'

" nerdtree
Plugin 'scrooloose/nerdtree'

call vundle#end()

" Indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" set general theme
syntax on
colorscheme monokai

" set airline theme"
let g:airline_theme='minimalist'

" speed up scrolling
set ttyfast

" toggle nerdtree with C-o

map <C-o> :NERDTreeToggle<CR>

"hide statusline
set noshowmode

" show buffers on top
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'

" set wildmenu for listing dirs
set wildmenu
set wildmode=longest,list

" tab indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
