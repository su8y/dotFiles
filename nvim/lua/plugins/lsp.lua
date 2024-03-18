return {
  -- tools
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- "stylua",
          -- "selene",
          -- "lua_check"
          -- "shellcheck",
          -- "shfmt",
          "lua_ls",
          "tailwindcss",
          "tsserver",
          "cssls",
          "jdtls",
          "html",
        },
      })
    end,
  },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.html.setup({})
      lspconfig.tailwindcss.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
