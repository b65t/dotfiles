return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd [[colorscheme moonfly]]
      vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd [[colorscheme tokyonight]]
      vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
  end,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
}
}
