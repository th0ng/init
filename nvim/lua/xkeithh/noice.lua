require("noice").setup({
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = false,
    }
  },
  cmdline = {
    view = "cmdline",
    format = {
      cmdline = {
        icon = " :"
      },
      search_down = {
        view = "cmdline", icon = " /"
      },
      search_up = {
        view = "cmdline", icon = " ?"
      },
    },
  },
  messages = {
    enabled = true,
    view_search = false,
    view_warn = false,
  }
})
