require('lualine').setup({
  options = {
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
    globalstatus = true,
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'branch', 'diagnostic'},
    lualine_x = {'lsp_status', 'location'},
    lualine_y = {},
    lualine_z = {},
  }
})
