require('lualine').setup({
  options = {
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'diagnostic'},
    lualine_x = {'lsp_status'},
    lualine_y = {},
    lualine_z = {},
  }
})
