vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', '<C-f>', '<cmd>NvimTreeToggle<CR>', { desc = "Toggle NvimTree" })

keymap.set("n", "<C-o>", "<cmd>Telescope find_files<CR>", { desc = "Find files with Telescope" })
keymap.set("n", "<C-h>", "<cmd>Telescope colorscheme<CR>", { desc = "Change colorscheme"})

keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle ToggleTerm" })
