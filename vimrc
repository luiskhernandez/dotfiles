set nocompatible "required by Vundle
filetype off     "required b Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" let Vundle manage Vundle, required
call vundle#begin() "required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()   " required
filetype plugin indent on    " required

" set leader
let mapleader = " "

set noswapfile
set encoding=utf-8
set ruler "show the cursor position all the time
set showcmd " display incomplete commands
set incsearch "do incremental search
set autowrite " Automatically :write before running commands
set hlsearch
syntax on

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


"number configuration
set number
set numberwidth=1
set relativenumber

" use tab with 2 spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" show matching of (, ] { 
set showmatch
" 0 seconds between showing matches
set matchtime=0

" delete current line with -
nmap - dd

"select current word using space
map , viw

" move lines
no <down> ddp
no <up> ddkP


" edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" surround current word with "
noremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" indent all file
map <leader>i mmgg=G'm<CR>

"paste from clipboard
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
"copy to clipboard
map <leader>y "+y
"copy currentline to clipboard
map <leader>Y "+y

"shortcut exit  insert mode 
imap jk <esc>
"shortcut exit  visual mode
vmap <leader>jk <esc>
"shortcut for save :write  on visual mode
nmap <leader>s :w<cr>
nmap <leader>S :x<cr>
nmap <leader>w :wa<cr>
nmap <leader>x :xa<cr>
"shortcut for close (:q) buffer 
map <leader>q <esc>:q<cr>
map <leader>Q <esc>:qa<cr>
"Quick save to repo as WIP
map <Leader>gwip :!git add . && git commit -m 'WIP' && git push origin<cr>
