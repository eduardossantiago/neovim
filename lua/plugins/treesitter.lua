return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "go",
        "lua",
        "javascript",
        "html",
        "kotlin",
        "vim",
        "java",
        "dart",
        "css",
        "typescript",
        "bash",
        "markdown_inline"
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
