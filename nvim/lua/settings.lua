local utils = require("utils")

local cmd = vim.cmd
local indent = 2

cmd("syntax enable")
cmd("filetype plugin indent on")
cmd("set noswapfile")

-- General options
utils.opt("o", "mouse", "a")
utils.opt("o", "signcolumn", "yes")
utils.opt("o", "hidden", true)
utils.opt("o", "scrolloff", 4)
utils.opt("o", "ttyfast", true)
utils.opt("o", "ttyfast", true)

-- Casing for search
utils.opt("o", "ignorecase", true)
utils.opt("o", "hlsearch", true)
utils.opt("o", "incsearch", true)
utils.opt("o", "smartcase", true)

-- Numbers in gutter
utils.opt("w", "number", true)
utils.opt("w", "relativenumber", false)

-- Window split direction
utils.opt("o", "splitbelow", true)
utils.opt("o", "splitright", true)

-- Tab
utils.opt("b", "shiftwidth", indent)
utils.opt("b", "tabstop", indent)
utils.opt("b", "expandtab", true)
utils.opt("b", "smartindent", true)
utils.opt("b", "autoindent", true)

-- Persistent undo, note this never disappears
vim.opt.undofile = true

-- Clipboard
utils.opt("o", "wildmode", "list:longest")
utils.opt("o", "clipboard", "unnamed,unnamedplus")

-- Highlight on yank
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}")

-- Always go to INSERT modo when in git commit file
vim.api.nvim_command("autocmd FileType gitcommit exec 'au VimEnter * startinsert'")

-- Clear hightlight with leader space
utils.map("n", "<leader><space>", "<cmd>noh<CR>")

-- Allow misspellings
vim.api.nvim_command("command! Wq :wq")
vim.api.nvim_command("command! WQ :wq")

vim.api.nvim_command("command! Wa :wa")
vim.api.nvim_command("command! WA :wa")

vim.api.nvim_command("command! Wqa :wqa")
vim.api.nvim_command("command! WQa :wqa")
vim.api.nvim_command("command! WQA :wqa")

vim.api.nvim_command("command! W :w")
vim.api.nvim_command("command! Q :q")

-- Move correctly over wrapped text
utils.map("n", "j", "gj")
utils.map("n", "k", "gk")

-- Format on save
vim.cmd([[
	augroup FormatAutogroup
	  autocmd!
	  autocmd BufWritePost * FormatWrite
	augroup END
]])
