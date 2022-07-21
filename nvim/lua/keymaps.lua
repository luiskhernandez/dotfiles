-- Neovim API aliases

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}

-- General

map('i','jk','<ESC>', default_opts)

-- Disable arrow keys

map('','<up>', '<nop>', {noremap = true })
map('','<down>', '<nop>', {noremap = true })
map('','<left>', '<nop>', {noremap = true })
map('','<right>', '<nop>', {noremap = true })

map('n', '<leader>,', ':Neotree toggle<CR>', default_opts)       -- open/close
