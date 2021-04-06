local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>Telescope live_grep<CR>", opts)
