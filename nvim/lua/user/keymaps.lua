-- Neovim API aliases

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}
local term_opts = { silent = true }

-- General

map('i','jk','<ESC>', default_opts)

-- nvim-tree
map('n', '<leader>e', ':Neotree toggle<CR>', default_opts)       -- open/close

-- Better window navigation
map('n','<C-h>','<C-w>h', default_opts)
map('n','<C-j>','<C-w>j', default_opts)
map('n','<C-k>','<C-w>k', default_opts)
map('n','<C-l>','<C-w>l', default_opts)


-- Visual --
map("x", "K", ":m '<-2<CR>gv=gv",default_opts)
map("x", "J", ":m '>+1<CR>gv=gv",default_opts)
--

-- Stay in indent mode
map("v", "<", "<gv", default_opts)
map("v", ">", ">gv", default_opts)

-- prevent yank when pasting in visual mode.
map("v", "p", '"_dP', default_opts)
