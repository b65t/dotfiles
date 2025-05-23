return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    indent = {
      char = "│",
       highlight = "IblIndent",
    },
  },
    config = function()
    vim.api.nvim_set_hl(0, "IblIndent", { bold = true })
    require("ibl").setup()
  end,
}

