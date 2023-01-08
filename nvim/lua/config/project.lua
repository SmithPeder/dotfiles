-- Configuration for project
require("project_nvim").setup({
	-- Methods of detecting the root directory
	detection_methods = { "lsp", "pattern" },
	-- If patterns in detection_methods and lsp fails these patterns will be used
	patterns = { ".git", ".venv", "manage.py", "pyproject.toml", "package.json", "Makefile" },
})
