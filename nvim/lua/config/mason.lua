require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 
      "sumneko_lua",
      "rust_analyzer",
      "pylsp",
      "tsserver",
      "bashls",
      "cssls",
      "html",
      "jsonls",
      "marksman",
      "terraformls"
    }
})

