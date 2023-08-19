require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 
      "rust_analyzer",
      "pylsp",
      "tsserver",
      "bashls",
      "lua_ls",
      "cssls",
      "html",
      "jsonls",
      "marksman",
      "terraformls"
    }
})

