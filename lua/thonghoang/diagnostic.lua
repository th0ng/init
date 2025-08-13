vim.diagnostic.config({
  virtual_text = {
    severity = { min = vim.diagnostic.severity.WARN },
    format = function(diagnostic)
      return string.format('[%s]', diagnostic.message)
    end,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})

