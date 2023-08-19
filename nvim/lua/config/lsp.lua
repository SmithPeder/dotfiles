local nvim_lsp = require("lspconfig")
local utils = require("utils")

-- Go to definition
utils.map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
utils.map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
utils.map("n", "gh", "<Cmd>lua vim.lsp.buf.hover()<CR>")

utils.map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
utils.map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

local on_attach = function(_, bufnr)
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
end

nvim_lsp.pylsp.setup({
	on_attach = on_attach,
	filetypes = { "python" },
	configurationSources = { "flake8" },
	settings = {
		pyls = {
			plugins = {
				-- Optional providers
				rope = {
					enabled = true,
				},
				pyflakes = {
					enabled = false,
				},
				mccabe = {
					enabled = false,
				},
				pycodestyle = {
					enabled = false,
				},
				pydocstyle = {
					enabled = true,
				},
				autopep8 = {
					enabled = true,
				},
				yapf = {
					enabled = true,
				},
				flake8 = {
					enabled = true,
					maxLineLength = 160,
				},
				pylint = {
					enabled = false,
				},
				-- 3er Party plugins
				pyls_mypy = {
					enabled = true,
				},
				pyls_isort = {
					enabled = true,
				},
				pyls_lsp_black = {
					enabled = true,
				},
				pyls_memestra = {
					enabled = true,
				},
				pyls_rope = {
					enabled = true,
				},
			},
		},
	},
})

nvim_lsp.tsserver.setup({ on_attach = on_attach, filetypes = { "typescript", "typescriptreact", "typescript.tsx" } })
nvim_lsp.vimls.setup({ on_attach = on_attach })
nvim_lsp.bashls.setup({ on_attach = on_attach })
nvim_lsp.lua_ls.setup({ on_attach = on_attach })
