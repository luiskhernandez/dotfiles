if &compatible
  set nocompatible
endif

" ## UI

" Use the colorscheme from above
" color molokai
set background=dark

" change vim cursor depending on the mode
if has('nvim')
  set termguicolors
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

  let g:python_host_prog = '/usr/local/bin/python2'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

filetype plugin on
filetype indent on

" ## Layout
set linebreak
set textwidth=79 " will auto wrap content when set
set nowrap " `on` is 'wrap'
set wrapscan

set showcmd " show incomplete commands
set ruler " show the cursor position all the time
set scrolloff=5
set sidescroll=1
set sidescrolloff=10
" set cul " turn on cursorline highlighting -- needed for linenumber HL too
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:⚋
set diffopt=filler " Add vertical spaces to keep right and left aligned.
set diffopt+=iwhite " Ignore whitespace changes.
set noerrorbells
set novisualbell
set relativenumber number
set splitbelow
set splitright

" ## Folding
set nofoldenable        "dont fold by default

" ## Indentions
set smartindent
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" ## Mode changes speedups
set notimeout
set ttimeout
set ttimeoutlen=10
set timeoutlen=10
