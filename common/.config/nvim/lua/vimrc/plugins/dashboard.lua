return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
	  theme = 'doom',
          hide = {
            statusline = false,
            tabline = false,
            winbar = false
           },
	    config = {
    header = {
	[[                                   ]],
	[[                                   ]],
	[[  ,-.       _,---._ __  / \\       ]],
	[[ /  )    .-'       `./ /   \\      ]],
	[[(  (   ,'            `/    /|      ]],
	[[ \\  `-\"             \\'\\   / |  ]],
	[[  `.              ,  \\ \\ /  |    ]],
	[[   /`.          ,'-`----Y   |      ]],
	[[  (            ;        |   '      ]],
	[[  |  ,-.    ,-'         |  /       ]],
	[[  |  | (   |    neovim  | /        ]],
	[[  )  |  \\  `.___________|/        ]],
	[[  `--'   `--'                      ]],
	[[                                   ]],
	[[                                   ]],
    }, --your header
    center = {
      {
	icon = ' ',
	desc = 'New File',
	key = 'n',
	keymap = 'spc n',
	key_format = ' %s',
	action = 'enew',
      },
      {
        icon = ' ',
        desc = 'Update',
        key = 'u',
        keymap = 'SPC l u',
        key_format = ' %s', -- remove default surrounding `[]`
        action = 'Lazy update'
      },
      {
	icon = ' ',
	desc = 'quit',
	key = 'q',
	keymap = 'q',
	key_format = ' %s',
	action = 'q!',
      }
    },
    footer = function()
	local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { " Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
    end,
  }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
