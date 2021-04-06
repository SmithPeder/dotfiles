local utils = require("utils")

utils.map("n", "<leader>,", "<cmd>NvimTreeToggle<CR>")
utils.map("n", "<leader>m", "<cmd>NvimTreeRefresh<CR>")
utils.map("n", "<leader>n", "<cmd>NvimTreeFindFile<CR>")
