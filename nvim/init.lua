-- Path
local D = os.getenv("DOTFILES") or os.getenv("HOME") .. "/.dotfiles"
local o = vim.o

-- This is a magic line that will take your pain away.
o.rtp = string.format("%s/neovim,%s", D, o.rtp)

-- Map leader to space
vim.g.mapleader = ","
vim.g.maplocalleader = ","

local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

-- Need to packadd packer since we have opt = true, and manage packer as a optional plugin
vim.cmd [[packadd packer.nvim]]
vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"

-- Modules
require("settings")
require("plugins")
require("config")
