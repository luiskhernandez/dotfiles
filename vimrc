set nocompatible "required by Vundle
filetype off     "required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" let Vundle manage Vundle, required
call vundle#begin() "required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'skwp/greplace.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-dispatch'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
" Plugin 'thoughtbot/vim-rspec'
Plugin 'janko-m/vim-test'
Plugin 'mattn/emmet-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'jgdavey/tslime.vim'
Plugin 'msanders/snipmate.vim'
" Plugin 'SirVer/ultisnips'
"" Track the engine.
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'taylor/vim-zoomwin'
Plugin 'tmhedberg/matchit'
Plugin 'Raimondi/delimitMate'
Plugin 'mklabs/vim-backbone'
" Plugin 'takac/vim-hardtime'
" Plugin 'dsawardekar/ember.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
"reserach and test vim tmux runner seems better"
" Bundle 'christoomey/vim-tmux-navigator'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ngmy/vim-rubocop'
" Plugin 'chrisbra/NrrwRgn'
Plugin 'mxw/vim-jsx'
Plugin 'isRuslan/vim-es6'
Plugin 'moll/vim-node'
" Colors
" Plugin 'nanotech/jellybeans.vim'

call vundle#end()   " required
filetype plugin indent on    " required

" Use the colorscheme from above
color molokai
set background=dark
" set leader
let mapleader = " "
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

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

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

" edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" indent all file
map <leader>i mmgg=G'm<CR>

nnoremap <leader>c :nohl<cr>
"Easymotion mapping
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
nmap <Leader><Leader>f <Plug>(easymotion-sn)
let g:EasyMotion_smartcase = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y= '%{strftime("%c")}'
let NERDTreeIgnore = ['\.swp$']
let NERDTreeShowLineNumbers=1

" vim tab navigation
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnew<CR>

" git Support
noremap <leader>gb :Gblame<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gl :Glog<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gp :Git push<CR>

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap L Lzz
nmap H Hzz

" RSpec.vim mappings
" nmap ,t :call RunCurrentSpecFile()<CR>
" nmap ,s :call RunNearestSpec()<CR>
" nmap ,l :call RunLastSpec()<CR>
" nmap ,a :call RunAllSpecs()<CR>
nmap ,r :! chrome-cli reload<CR>

" let g:rspec_runner = "os_x_iterm"
" let g:rspec_command = "call Send_to_Tmux('spring rspec {spec}\n')"
" let g:rspec_command = "call Send_to_Tmux('rspec {spec}\n')"
" let g:rspec_command = "Dispatch bundle exec rspec {spec}"
" let g:rspec_command = "Dispatch bin/rake test {spect}"
" map for commetary usin cm is more friendly"
map cm gc
"show cursor line Horizontal and Vertical"
set cursorline cursorcolumn
"Sane Ignore For ctrlp"
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$',
\ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }

iabbrev lenght length
iabbrev widht width
iabbrev heigth height

set mouse=a

" Maping for easy autocompletion"
inoremap <C-l> <C-x><C-l>
inoremap <C-f> <C-x><C-f>

"maping for ZoomWin"
nnoremap <leader>z :ZoomWin<CR>

let g:ctrlp_max_files=0
" clipboard unnamed for yank between vim, tmux and osx"
set clipboard=unnamed
runtime macros/matchit.vim
" set wim=longest,list:full,full
" let g:hardtime_default_on = 1
" autocmd FileType ruby set omnifunc=rubycomplete#Complete

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set timeoutlen=1000
set ttimeoutlen=0
imap jk <Esc>l
vmap jk <Esc>l


" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" let g:endwise_no_mappings = 1
let g:UltiSnipsExpandTrigger = "<tab>"

function! RubyInfo()
  ruby << EOF
    puts RUBY_VERSION
    puts RUBY_PLATFORM
    puts RUBY_RELEASE_DATE
EOF
endfunction
" I don't know what fix this, but is cool to have it
" Make vim faster on bigger files
set re=1
set ttyfast
set lazyredraw

if filereadable('node_modules/babel/register.js')
  " babel 5
  let g:test#javascript#mocha#options = "--compilers js:babel/register --colors --full-trace --timeout 15000"
elseif filereadable('node_modules/babel-register/lib/node.js')
  " babel 6
  let g:test#javascript#mocha#options = "--compilers js:babel-register --require babel-polyfill --colors --full-trace --timeout 15000"
else
  " no babel
  let g:test#javascript#mocha#options = "--colors --full-trace --timeout 15000"
endif

let g:test#javascript#mocha#file_pattern = ".test.js"
let g:test#javascript#mocha#executable= 'NODE_ENV=test node_modules/.bin/mocha'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <leader>, : NERDTreeFind<CR>
