vim.lsp.config("pylsp", {
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = { enabled = false },
				mccabe = { enabled = false },
				pyflakes = { enabled = false },
				pylint = { enabled = false },
				jedi_completion = { fuzzy = true },
			},
		},
	},
})
