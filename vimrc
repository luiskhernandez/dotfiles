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
Plugin 'easymotion/vim-easymotion'
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
Plugin 'tmhedberg/matchit'
Plugin 'Raimondi/delimitMate'
Plugin 'mklabs/vim-backbone'
Plugin 'takac/vim-hardtime'
Plugin 'dsawardekar/ember.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
"reserach and test vim tmux runner seems better"
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
Plugin 'bronson/vim-trailing-whitespace'
" Colors
" Plugin 'nanotech/jellybeans.vim'

call vundle#end()   " required
filetype plugin indent on    " required

" Use the colorscheme from above
color Tomorrow-Night
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

" edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" indent all file
map <leader>i mmgg=G'm<CR>

"shortcut exit  insert mode 
imap jk <esc>
"shortcut for save :write  on visual mode
nmap s :wa<cr>
nmap S :x<cr>

nnoremap <leader>c :nohl<cr>
"Quick save to repo as WIP
map <Leader>wip :!git add . && git commit -m 'WIP' && git push origin<cr>
"mapping for GIT
map gt :Gstatus<cr>
"Easymotion mapping
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
nmap <Leader>f <Plug>(easymotion-sn)
nnoremap <Leader>t <Plug>(easymotion-t2)
let g:EasyMotion_smartcase = 1
" Don't scroll off the edge of the page
" set scrolloff=5
" set laststatus=2
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
" vim buffer navigation"
noremap <leader><right> :bnext<CR>
noremap <leader><left>  :bprevious<CR>

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap L Lzz
nmap H Hzz
"quick pairs
" inoremap ' ''<ESC>i
" inoremap " ""<ESC>i
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap pry binding.pry
" inoremap log console.log


" RSpec.vim mappings
nmap ,t :call RunCurrentSpecFile()<CR>
nmap ,s :call RunNearestSpec()<CR>
nmap ,l :call RunLastSpec()<CR>
nmap ,a :call RunAllSpecs()<CR>
nmap ,r :! chrome-cli reload<CR>

" let g:rspec_runner = "os_x_iterm"
" let g:rspec_command = "call Send_to_Tmux('spring rspec {spec}\n')"
let g:rspec_command = "call Send_to_Tmux('rspec {spec}\n')"
" map for commetary usin cm is more friendly"
map cm gc
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

" Maping for easy autocompletion"
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
set wim=longest,list:full,full
" let g:hardtime_default_on = 1
autocmd FileType ruby set omnifunc=rubycomplete#Complete

"Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
