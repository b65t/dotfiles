  return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local lualine = require("lualine")

  lualine.setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      -- section_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = true,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = { '' },
    -- lualine_b = {custom_icon},
    lualine_b = {  {
        function() return '▊' end,
        padding = { left = 0, right = 0 },
        color = { bg = 'NONE' }
        }
      },
    --lualine_c = {'branch', 'diff'},
    lualine_c = {
      'mode',
      { 'filetype', icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      { 'filename', path = 1 },
    },
    -- lualine_x = {'diagnostics'},
    -- lualine_y = {'filetype'},
    -- lualine_z = {'location'}
    lualine_x = {'diagnostics', 'encoding', 'fileformat'},
    lualine_y = {''},
    lualine_z = {
      function()
        return " " .. os.date("%I:%M,%p")
      end,
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
   tabline = {},
   winbar = {},
   inactive_winbar = {},
   extensions = {
     "toggleterm",
     "nvim-tree",
     "lazy",
   }
 }
 end,
}
