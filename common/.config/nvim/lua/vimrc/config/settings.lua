local opt = vim.opt
local o = vim.o
local g = vim.g

opt.number = true
opt.cursorline = true
o.numberwidth = 3
opt.signcolumn = "yes"

opt.fillchars = {
  eob = " ",
  vert = "▏",
  horiz = "▁"
}
opt.termguicolors = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.arabicshape = true
