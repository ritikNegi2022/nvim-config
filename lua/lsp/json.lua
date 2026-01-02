vim.lsp.config("jsonls", {
	capabilities = capabilities,
	settings = {
		json = {
			validate = { enable = true },
		},
	},
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
})
