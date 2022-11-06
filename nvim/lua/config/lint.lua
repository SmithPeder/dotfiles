require("lint").linters_by_ft = {
	typescript = { "vale" },
	python = { "flake8" },
}

-- Setup a autocmd to trigger linting with lua autocmds (0.7)
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
