require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('n', '<F12>', ':bd<CR>', {noremap = true, silent = true})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local opts = {noremap = true, silent = true}


vim.o.clipboard = "unnamedplus"
-- copy
vim.api.nvim_set_keymap('x', '<leader>y', '"+y', opts)
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', opts)
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', opts)
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', opts)

-- paste
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', opts)
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', opts)
vim.api.nvim_set_keymap('x', '<leader>p', '"+p', opts)
vim.api.nvim_set_keymap('x', '<leader>P', '"+P', opts)

