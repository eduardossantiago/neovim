return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Open Neo-tree (Project Files)
    vim.keymap.set('n', '<C-g>n', ':Neotree filesystem reveal left<CR>', {})

    -- Open current file on Neo-tree
    -- vim.keymap.set('n', '<leader>cf', ':Neotree reveal<CR>', {})
  end
}
