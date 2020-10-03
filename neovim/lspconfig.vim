" ===================================================
" NVIM lspconfig settings
" ===================================================
lua <<EOF

-- vim
-- yarn global add vim-language-server
require'nvim_lsp'.vimls.setup{}

-- bash
-- :LspInstall bashls
require'nvim_lsp'.bashls.setup{}

-- css
-- :LspInstall cssls
require'nvim_lsp'.cssls.setup{}

-- Docker
-- :LspInstall dockerls
require'nvim_lsp'.dockerls.setup{}

-- flow
-- npx flow lsp --help
require'nvim_lsp'.flow.setup{}

-- HTML
-- LspInstall html
require'nvim_lsp'.html.setup{}

-- Java
-- :LspInstall jdtls
require'nvim_lsp'.jdtls.setup{}

-- python
-- pip3 install -U jedi-language-server
require'nvim_lsp'.jedi_language_server.setup{}

-- json
-- :LspInstall jsonls
require'nvim_lsp'.jsonls.setup{}

-- typescript
-- :LspInstall tsserver
require'nvim_lsp'.tsserver.setup{}

-- rome(everything js)
-- yarn global add rome
require'nvim_lsp'.rome.setup{}

-- yamlls
-- :LspInstall yamlls
-- require'nvim_lsp'.yamlls.setup{}

EOF
