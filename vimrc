set nocompatible "required by Vundle
filetype off     "required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" let Vundle manage Vundle, required
call vundle#begin() "required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mintplant/vim-literate-coffeescript'
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
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'jgdavey/tslime.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'taylor/vim-zoomwin'
"reserach and test vim tmux runner seems better"
Bundle 'christoomey/vim-tmux-navigator'

Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
" Colors
" Plugin 'nanotech/jellybeans.vim'

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
vmap ñ :
nnoremap <leader>m :NERDTreeToggle<CR>
set noswapfile
set encoding=utf-8
set ruler "show the cursor position all the time
set showcmd " display incomplete commands
set incsearch "do incremental search
set autowrite " Automatically :write before running commands
set hlsearch
" setlocal spell spelllang=en_us
syntax enable

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
nmap s :wa<cr>
nmap S :x<cr>
"shortcut for close (:q) buffer 
map <leader>q <esc>:q<cr>
map <leader>Q <esc>:q!<cr>
nnoremap <leader>c :nohl<cr>
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

" vim buffer navigation"
noremap <leader><right> :bnext<CR>
noremap <leader><left>  :bprevious<CR>

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
inoremap log console.log


" RSpec.vim mappings
nmap ,t :call RunCurrentSpecFile()<CR>
nmap ,s :call RunNearestSpec()<CR>
nmap ,l :call RunLastSpec()<CR>
nmap ,a :call RunAllSpecs()<CR>
nmap ,r :! chrome-cli reload<CR>

" let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "call Send_to_Tmux('spring rspec {spec}\n')"
" let g:rspec_command = "call Send_to_Tmux('rspec {spec}\n')"
" map for commetary usin cm is more friendly"
map cm gc
" use F to serach"
" noremap F /
map !d "_d
map !c "_c
"show cursor line Horizontal and Vertical"
set cursorline cursorcolumn
"Sane Ignore For ctrlp"
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }

" set foldmethod=syntax
" set foldlevelstart=20

"Remove all comments from file"
map <leader>rc :g/^\#/d<CR>

"Auto spell correctio"

iabbrev lenght length
iabbrev widht width
iabbrev heigth height

set mouse=a

" Maping for easy autcomplition"
inoremap <C-l> <C-x><C-l>
inoremap <C-f> <C-x><C-f>

"maping for ZoomWin"
nnoremap <leader>z :ZoomWin<CR>

"config for rubocop , for now just for VHL projecyts at koombea"
" let g:vimrubocop_config = '/Users/koombea/projects/vhl/vhl-rubocop.yml'
let g:ctrlp_max_files=0
" clipboard unnamed for yank between vim, tmux and osx"
set clipboard=unnamed
runtime macros/matchit.vim
