local utils = require("utils")

-- Setup
require("Navigator").setup(
    {
        auto_save = "current",
        disable_on_zoom = true
    }
)

-- Keybindings
local opts = {noremap = true, silent = true}

utils.map("n", "<A-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
utils.map("n", "<A-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
utils.map("n", "<A-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
utils.map("n", "<A-j>", "<CMD>lua require('Navigator').down()<CR>", opts)
