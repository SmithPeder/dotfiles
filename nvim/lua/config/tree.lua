local nvim_tree = require("nvim-tree")
local utils = require("utils")

-- Get width and height of UI
local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
-- Set local width and height to a little less then full
local width = gheight - 10
local height = gheight - 20

-- Close the tree or change the cursor in the tree for the current bufname,
-- similar to combination of |:NvimTreeToggle| and |:NvimTreeFindFile|.
utils.map("n", "<leader>,", "<cmd>NvimTreeFindFileToggle<CR>")
utils.map("n", "<leader>m", "<cmd>NvimTreeRefresh<CR>")
-- Also close the tree when hitting escape
utils.map("n", "<escape>", "<cmd>:NvimTreeClose<CR>")

nvim_tree.setup({
	sort_by = "case_sensitive",
	hijack_cursor = true, -- keeps the cursor on the first letter of the filename
	prefer_startup_root = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	view = {
		width = width,
		centralize_selection = true,
		cursorline = true,
		signcolumn = "yes",
		float = {
			enable = true,
			quit_on_focus_loss = true, -- press outside floating window to defocus
			open_win_config = { -- center window config
				relative = "editor",
				width = width,
				height = height,
				row = (gheight - height) * 0.4,
				col = (gwidth - width) * 0.5,
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true, -- show status of inner files on dir
		icons = { hint = "", info = "", warning = "", error = "" },
	},
	git = {
		enable = true,
		show_on_dirs = true, -- show status of inner files on dir
	},
	renderer = {
		group_empty = true, -- merge nested folder with one file
	},
	filters = {
		dotfiles = false, -- show dotfiles
	},
})
