local nvim_lsp = require('lspconfig')
local utils = require("utils")

-- Go to definition
utils.map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
utils.map('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
utils.map('n', 'gh', '<Cmd>lua vim.lsp.buf.hover()<CR>')

local on_attach = function(_, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end


-- lua LSP must be built and installed manually
require("nlua.lsp.nvim").setup(
    require("lspconfig"), { on_attach = on_attach }
)
--
-- pip install -U jedi-language-server
nvim_lsp.jedi_language_server.setup{ on_attach = on_attach }
--
-- npm install -g typescript typescript-language-server
nvim_lsp.tsserver.setup{ on_attach = on_attach }
--
-- npm install -g vim-language-server
nvim_lsp.vimls.setup{ on_attach = on_attach }
--
-- npm i -g bash-language-server
nvim_lsp.bashls.setup{ on_attach = on_attach }
