return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
      lspconfig.eslint.setup({
        capabilities = capabilities
      })
      lspconfig.gradle_ls.setup({
        capabilities = capabilities
      })
      lspconfig.groovyls.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities
      })
      lspconfig.kotlin_language_server.setup({
        capabilities = capabilities
      })
      lspconfig.sqlls.setup({
        capabilities = capabilities
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", -- lua
          "ts_ls", -- javascript/typescript/react/etc
          "cssls", -- css
          "cssmodules_ls", -- css
          "css_variables", -- css 
          "eslint", -- eslint
          "gradle_ls", -- gradle
          "groovyls", -- groovy
          "html", -- html
          "jsonls", -- json
          "jdtls", -- java
          "kotlin_language_server", -- kotlin
          "markdown_oxide", -- Markdown
          "basedpyright", -- Python
          "sqlls", -- SQL
          "somesass_ls", -- SASS
          "lemminx", -- XML
          "yamlls", -- YAML
        },
      })
    end,
  },
}
