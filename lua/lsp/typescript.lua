vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifierPreference = "relative",
      },
    },
    javascript = {
      preferences = {
        importModuleSpecifierPreference = "relative",
      },
    },
  },
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
})
