set nocompatible "required by Vundle
filetype off     "required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" let Vundle manage Vundle, required
call vundle#begin() "required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mintplant/vim-literate-coffeescript'
Plugin 'ervandew/supertab'
Plugin 'skwp/greplace.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-dispatch'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'eiginn/netrw'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'jgdavey/tslime.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/nerdtree'

"reserach and test vim tmux runner seems better"
Bundle 'christoomey/vim-tmux-navigator'

Plugin 'mustache/vim-mustache-handlebars'
" Colors
Plugin 'nanotech/jellybeans.vim'

call vundle#end()   " required
filetype plugin indent on    " required

" Use the colorscheme from above
colorscheme monokai
set background=dark
" let g:solarized_termcolors = 256
" colorscheme solarized

" set leader
let mapleader = " "
"for closer key
nmap ñ :
nnoremap <leader>m :NERDTreeToggle<CR>
set noswapfile
set encoding=utf-8
set ruler "show the cursor position all the time
set showcmd " display incomplete commands
set incsearch "do incremental search
set autowrite " Automatically :write before running commands
set hlsearch
" setlocal spell spelllang=en_us
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

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

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


"select current word using space
map , viw

" move lines
no <down> ddp
no <up> ddkP

" edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" surround current word with "
noremap <leader>2 viw<esc>a"<esc>hbi"<esc>lel

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
nmap s :wa<cr>
nmap S :x<cr>
"shortcut for close (:q) buffer 
map <leader>q <esc>:q<cr>
map <leader>Q <esc>:q!<cr>
nmap <leader>c :nohl<cr>
"Quick save to repo as WIP
map <Leader>gwip :!git add . && git commit -m 'WIP' && git push origin<cr>
"mapping for GIT
map gt :Gstatus<cr>
"Easymotion mapping
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap <Leader>f <Plug>(easymotion-s2)
nnoremap <Leader>t <Plug>(easymotion-t2)
" Don't scroll off the edge of the page
set scrolloff=5
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y= '%{strftime("%c")}'
let NERDTreeIgnore = ['\.swp$']

" vim tab navigation

nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnew<CR>


"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
"quick pairs
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap pry binding.pry


" RSpec.vim mappings
nmap ,t :call RunCurrentSpecFile()<CR>
nmap ,s :call RunNearestSpec()<CR>
nmap ,l :call RunLastSpec()<CR>
nmap ,a :call RunAllSpecs()<CR>
" let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "call Send_to_Tmux('spring rspec {spec}\n')"
" map for commetary usin cm is more friendly"
map cm gc
" use F to serach"
noremap F /

"show cursor line Horizontal and Vertical"
set cursorline cursorcolumn
"Sane Ignore For ctrlp"
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }


"Remove all comments from file"
map <leader>rc :g/^\#/d<CR>

"Auto spell correctio"

iabbrev lenght length
iabbrev widht width
iabbrev heigth height


