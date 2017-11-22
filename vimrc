set nocompatible
filetype off

" Load plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
call vundle#end()

filetype plugin indent on

" Some options
set tabstop=4
set autoindent
set copyindent
set number
set relativenumber
set softtabstop=4
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set showcmd
set smartcase
set smarttab
set hlsearch
set incsearch
set mouse=a

" Allow ; to be used instead of :
nnoremap ; :

" Map keys for pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" No arrow keys!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Go to next line in editor instead of next full line
nnoremap j gj
nnoremap k gk

" NERDTree
map <C-n> :NERDTree<CR>

if executable('xclip')
    "copy the given range (or the current line) using xclip
    command! -range Xclip <line1>,<line2>!tee >(xclip -i -selection clipboard)
endif

" Forgot to use `sudo` for editing a file that requires root?
cmap w!! w !sudo tee % >/dev/null

" Lastly, enable syntax highlighting
syntax on
