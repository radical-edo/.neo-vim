return {
  {
    "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "ts_ls",
      "html"
    }
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      },
    },
    'neovim/nvim-lspconfig',
  }
  },
  { "hrsh7th/nvim-cmp" },
  {
    "hrsh7th/cmp-nvim-lsp",
    event = { "BufReadPre", "BufNewFile" },
    config = function ()
      local cmp = require("cmp_nvim_lsp")
      local capabilities = cmp.default_capabilities()
      vim.lsp.config("*", {
        capabilities = capabilities
      })
    end
  },
}
