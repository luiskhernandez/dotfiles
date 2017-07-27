let g:dein_repo = 'https://github.com/Shougo/dein.vim.git'
let g:dein_dir = '~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'

if empty(glob(g:dein_dir))
  exec 'silent !mkdir -p '.g:dein_dir
  exec '!git clone '.g:dein_repo.' '.g:dein_dir
endif

exec 'set runtimepath^='.g:dein_dir

call dein#begin(expand('~/.config/nvim/dein'))
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
call dein#end()

if dein#check_install()
  call dein#install()
endif
