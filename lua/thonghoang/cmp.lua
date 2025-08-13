local cmp = require('cmp')

cmp.setup({
  -- Enable snippet support (optional, but required for LSP snippet completion)
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For LuaSnip
    end,
  },
  -- Key mappings for completion
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion manually
    ['<C-e>'] = cmp.mapping.abort(), -- Close completion menu
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Navigate to next item
    ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Navigate to previous item
  }),
  -- Completion sources
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- LSP completions
    { name = 'luasnip' }, -- Snippet completions
    { name = 'buffer' }, -- Buffer text completions
    { name = 'path' }, -- File path completions
  }),
  -- Optional: Ensure completion menu behavior
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged }, -- Trigger on text change
  },
})
