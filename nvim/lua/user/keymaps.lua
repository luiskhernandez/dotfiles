-- Neovim API aliases

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}
local term_opts = { silent = true }
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--Remap space as leader key
map("", "<Space>", "<Nop>", default_opts)
--
-- General
--
map('i','jk','<ESC>', default_opts)

-- nvim-tree
map('n', '<leader>,', ':Neotree toggle<CR>', default_opts)       -- open/close

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

-- Telescope
map("n","<leader>ff", ":Telescope find_files<CR>", default_opts)
map("n","<leader>fg", ":Telescope live_grep<CR>", default_opts)
