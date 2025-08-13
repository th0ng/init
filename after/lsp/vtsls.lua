---@module "vim.lsp.client"
---@class vim.lsp.ClientConfig
return {
  filetypes = {
    "javascript",
    "typescript",
    "vue",
  },
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          {
            name = "@vue/typescript-plugin",
            location = vim.fn.stdpath("data")
              .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
            languages = { "vue" },
            configNamespace = "typescript",
          },
        },
      },
    },
    typescript = {
      inlayHints = {
        enumMemberValues = {
          enabled = true,
        },
        functionLikeReturnTypes = {
          enabled = true,
        },
        parameterNames = { enabled = "all" },
        parameterTypes = {
          enabled = true,
          suppressWhenArgumentMatchesName = true,
        },
        propertyDeclarationTypes = {
          enabled = true,
        },
        variableTypes = {
          enabled = true,
        },
      },
    },
  },
}
