-- define common options
local opts = {
    noremap = true,
    silent = true
}

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', vim.cmd.w)

-- Better scroll
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Split
vim.keymap.set('n', '<leader>/', ':vsplit<CR>', opts)

-- Better window navigation4
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Debugging go test

-- NvimTree
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeFindFile)
vim.keymap.set('n', '<leader>b', vim.cmd.NvimTreeToggle)

-- Float command
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

-- Verbosely close all buffers
vim.keymap.set('n', '<leader>q', '<cmd>%bd<CR>', opts)
