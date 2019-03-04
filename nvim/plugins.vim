if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-dispatch'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'janko-m/vim-test'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'jgdavey/tslime.vim'
Plug 'msanders/snipmate.vim'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'taylor/vim-zoomwin'
Plug 'tmhedberg/matchit'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'mustache/vim-mustache-handlebars'
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ngmy/vim-rubocop'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'moll/vim-node'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-startify'
Plug 'Valloric/MatchTagAlways'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-es2015-snippets'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
call plug#end()
