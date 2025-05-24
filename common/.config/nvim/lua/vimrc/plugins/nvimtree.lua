return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup{}

    require("nvim-tree").setup({
      hijack_cursor = true,
      renderer = {
        root_folder_label = false,
        indent_markers = {
         enable = true
        },
        icons = {
          glyphs = {
            folder = {
              default = "",
            },
            git = {
              unstaged = "",
              unmerged = "",
              renamed = "",
              untracked = ""
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      view = {
        width = 30,
      },
})
  end,
}
