vim.lsp.config("rust_analyzer", {
	capabilities = capabilities,
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},

			checkOnSave = {
				enable = true,
				command = "clippy",
			},

			diagnostics = {
				enable = true,
			},

			completion = {
				autoimport = {
					enable = true,
				},
			},

			procMacro = {
				enable = true,
			},
		},
	},
})
