---@module "vim.lsp.client"
---@class vim.lsp.ClientConfig
return {
  settings = {
    vue = {
      inlayHints = {
        destructuredProps = {
          enabled = true,
        },
        inlineHandlerLoading = {
          enabled = true,
        },
        missingProps = {
          enabled = true,
        },
        optionsWrapper = {
          enabled = true,
        },
        vBindShorthand = {
          enabled = true,
        },
      },
    },
  },
}
