" set leader
let mapleader = " "

" Use the colorscheme from above
color molokai
set background=dark

let g:ctrlp_max_files=0
" clipboard unnamed for yank between vim, tmux and osx"
set clipboard=unnamed
runtime macros/matchit.vim

"NERDTREE
let NERDTreeHighlightCursorline = 0
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeLimitedSyntax = 1
let NERDTreeIgnore = ['\.swp$']
let NERDTreeShowLineNumbers=1

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

"Easymotion mapping
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
nmap <Leader><Leader>f <Plug>(easymotion-sn)
let g:EasyMotion_smartcase = 1

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


"maping for ZoomWin"
nnoremap <leader>z :ZoomWin<CR>


let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set timeoutlen=1000
set ttimeoutlen=0
imap jk <Esc>l
vmap jk <Esc>l


" I don't know what fix this, but is cool to have it
" Make vim faster on bigger files
set re=1
set ttyfast
set lazyredraw


nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <leader>, : NERDTreeFind<CR>
