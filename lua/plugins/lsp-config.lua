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
        capabilities = capabilities })
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
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities
      })
      lspconfig.basedpyright.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      lspconfig.bashls.setup({
        capabilities = capabilities
      })

      --vim.keymap.set({ "n" }, "<leader>vws", vim.lsp.buf.workspace_symbol, {})

      -- Show doc of a function/class/etc
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

      -- Go to definition of a function/variable/etc
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

      -- Open code actions window
      vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})

      --Jump to the next error and shows the error
      vim.keymap.set({ "n" }, '[e', vim.diagnostic.goto_next, {})

      --Jump to the next error and shows the error
      vim.keymap.set({ "n" }, ']e', vim.diagnostic.goto_prev, {})

      -- Show the error under cursor
      vim.keymap.set({ "n" }, '<leader>e', vim.diagnostic.open_float, {})

      -- While in insert mode, shows the signature of a function
      vim.keymap.set({ "i", "n" }, '<C-h>', vim.lsp.buf.signature_help, {})

      -- rename variable/function
      vim.keymap.set({ "n" }, '<leader>rr', vim.lsp.buf.rename, {})

      -- format file
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

      -- Find references to a function or variable:
      -- vim.keymap.set({ "n" }, '<leader>', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>fr', function()
          require('telescope.builtin').lsp_references()
      end, { noremap = true, silent = true })
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
          "docker_compose_language_service", --DOCKER COMPOSE
          "dockerls", --docker
          "gopls", -- golang
          "bashls", -- bash
          -- "pylyzer" -- python
        },
      })
    end,
  },
}
