-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy
require("lazy").setup({
	-- Packer can manage itself
{
    "williamboman/mason.nvim",
    lazy = false,                -- always load (needs to run early)
    priority = 1000,
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },

  -- ── Bridge between Mason and nvim-lspconfig ───────────────────────
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })
    end,
  },

  {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	},
  { 
    "EdenEast/nightfox.nvim",
    name = "nightfox"
  },
  {
    "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"
  },
  {
    'nvim-treesitter/playground'
  },

  {
    'mbbill/undotree'
  },
  {
    'tpope/vim-fugitive'
  },

	{
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
		}
	},

  {
    "neovim/nvim-lspconfig"
  },

  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  },

  -- indenation guide
  {
    "lukas-reineke/indent-blankline.nvim"
  },
  {
    'mfussenegger/nvim-jdtls'
  },

  -- Render markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },

  { "sitiom/nvim-numbertoggle" },

  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'enter' },

      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },
      completion = { documentation = { auto_show = false } },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  },

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      show_modified = true,
    },
  },

  {
    'petertriho/nvim-scrollbar',
    opts = {}
  },

  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  {
    'mhinz/vim-signify',
  },

  {
    'folke/noice.nvim',
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
  }
}, {
  install = { colorscheme = { "carbonfox" } },
  checker = { enabled = true, notify = false },
  change_detection = { notify = false },
})
