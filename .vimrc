" default setting
source $VIMRUNTIME/defaults.vim

" appearance
set autoread
set belloff=all
set hidden
set laststatus=2
set number

" disable output file
set nobackup
set noswapfile
set noundofile
set viminfo=

"key binding
let mapleader = "\<Space>"
noremap <Leader>h 0
noremap <Leader>l $
nnoremap <Leader>a ggVG
nnoremap <Leader>f *N
nnoremap <Leader>s :update<CR>
nnoremap <Leader>q :qa<CR>
nnoremap <Leader>Q :qa!<CR>
nnoremap <Leader><Leader> :nohlsearch<CR>

" search
set hlsearch
set ignorecase
set incsearch
set smartcase

" tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
