local utils = require("utils")
local cmd = vim.cmd

utils.opt("o", "termguicolors", true)

vim.g.material_style = "darker"
require('material').set()
