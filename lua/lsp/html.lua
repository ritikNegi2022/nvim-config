vim.lsp.config("html", {
	capabilities = capabilities,
	filetypes = { "html" },
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
