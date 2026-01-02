pack("stevearc/conform.nvim")

local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		-- JS / TS
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },

		-- Web
		html = { "prettier" }, -- avoid htmlbeautifier conflict
		css = { "prettier" },

		-- Lua
		lua = { "stylua" },

		-- Python
		python = { "black" },

		-- JSON
		json = { "prettier" },

		-- Shell
		sh = { "beautysh" },
		bash = { "beautysh" },
	},

	format_on_save = {
		lsp_fallback = true, -- formatter > LSP
		timeout_ms = 2000,
	},
})

vim.keymap.set("n", "<leader>lf", function()
	conform.format({ lsp_fallback = true })
end, { desc = "Format (Conform > LSP)" })
