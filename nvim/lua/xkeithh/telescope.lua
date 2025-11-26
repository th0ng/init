
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set("n", "<leader><leader>", builtin.find_files, {silent = true})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {silent=true})
