if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

if filereadable(expand("~/.config/nvim/settings.vim"))
  source ~/.config/nvim/settings.vim
endif
