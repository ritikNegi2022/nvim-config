pack("neovim/nvim-lspconfig")

vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"html",
	"tailwindcss",
	"marksman",
	"rust_analyzer",
	"pylsp",
	"jsonls",
	"bashls",
	"emmet_language_server",
})

local signs = {
	[vim.diagnostic.severity.ERROR] = " ",
	[vim.diagnostic.severity.WARN] = " ",
	[vim.diagnostic.severity.HINT] = "󰠠 ",
	[vim.diagnostic.severity.INFO] = " ",
}

-- Set diagnostic config
vim.diagnostic.config({
	signs = {
		text = signs,
	},
	virtual_text = true,
	underline = true,
	update_in_insert = false,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Buffer local mappings
		local opts = { buffer = ev.buf, silent = true }
		local Snacks = require("snacks")

		-- Keymaps
		opts.desc = "Show LSP references"
		vim.keymap.set("n", "gR", function()
			Snacks.picker.lsp_references()
		end, opts)

		opts.desc = "Go to declaration"
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

		opts.desc = "Show LSP definitions"
		vim.keymap.set("n", "gd", function()
			Snacks.picker.lsp_definitions()
		end, opts)

		opts.desc = "Show LSP implementations"
		vim.keymap.set("n", "gi", function()
			Snacks.picker.lsp_implementations()
		end, opts)

		opts.desc = "Show LSP type definitions"
		vim.keymap.set("n", "gt", function()
			Snacks.picker.lsp_type_definitions()
		end, opts)

		opts.desc = "See available code actions"
		vim.keymap.set({ "n", "v" }, "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, opts)

		opts.desc = "Smart rename"
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

		opts.desc = "Show buffer diagnostics"
		vim.keymap.set("n", "<leader>D", function()
			Snacks.picker.diagnostics_buffer()
		end, opts)

		opts.desc = "Show line diagnostics"
		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

		opts.desc = "Show documentation for what is under cursor"
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

		opts.desc = "Restart LSP"
		vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if not client then
			return
		end

		-- Enable completion with snippet support
		vim.lsp.completion.enable(true, client.id, ev.buf, {
			autotrigger = true,
			snippet_expand = function(snippet)
				vim.snippet.expand(snippet)
			end,
		})
	end,
})
