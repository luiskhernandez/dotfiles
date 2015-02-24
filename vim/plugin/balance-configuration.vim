autocmd VimResized * :wincmd =

"zoom vim pane like tmux pane"

nnoremap <leader>z :wincmd _<cr> :wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
