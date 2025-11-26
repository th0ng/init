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
vim.keymap.set('n', '<leader>/', ':vnew<CR>', opts)
vim.keymap.set('n', '<leader>-', ':new<CR>', opts)

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

-- NvimTree
vim.keymap.set('n', '<leader>b', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeFindFile)

-- Verbosely close all buffers
vim.keymap.set('n', '<leader>s', vim.cmd.w, opts)
vim.keymap.set('n', '<leader>q', '<cmd>%bd<CR>', opts)

-- Resize window
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Exit terminal mode
vim.keymap.set("t", '<Esc>', "<C-\\><C-n>", opts)

-- Move lines
vim.keymap.set("v", "<C-j>", ":m '>+1<CR><Esc>gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR><Esc>gv", { desc = "Move selected lines up" })

