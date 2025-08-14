vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.ERROR },
    format = function(diagnostic)
      return string.format('[%s]', diagnostic.message)
    end,
  },
  signs = true,
  underline = true,
  update_in_insert = true,
})

vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>")
