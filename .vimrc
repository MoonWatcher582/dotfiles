colors jellybeans

set mousem=extend
set mouse=a

set tabstop=3
set shiftwidth=3
set softtabstop=3

set foldmethod=syntax
set foldlevel=15

set nocompatible

"Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
syntax on

set ruler
set showcmd
set number
set smartindent
set autoindent
set incsearch
set hlsearch
set ignorecase
set smartindent
set mousehide
set splitbelow
set wildmenu
set wildmode=list:longest
set showmatch

nmap <space> :

"Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
"Window nav
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"change pwd to file's directory
autocmd BufEnter * cd %:p:h

"No need to reload vim after changing vimrc
if has("autocmd")
	augroup myvimrchooks
		au!
		autocmd bufwritepost .vimrc source ~/.vimrc
	augroup END
endif

"Spelling correction
iab teh the
iab Teh The

"Autosort CSS properties
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort

"backups
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backup
