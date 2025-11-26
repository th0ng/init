require('toggleterm').setup()

vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
