pack("nvim-mini/mini.completion")

local mini_completion = require("mini.completion")

mini_completion.setup({
	delay = { completion = 100, info = 100, signature = 50 },
	window = {
		info = { border = "rounded" },
		signature = { border = "rounded" },
	},
	lsp_completion = {
		source_func = "omnifunc",
		auto_setup = true,
	},

	completion = {
		autocomplete = true,
	},

	fallback_action = "<C-n>",

	mappings = {
		force_twostep = "<C-Space>",
		force_fallback = "<A-Space>",
	},
})

-- autocomplete keybind
vim.keymap.set("i", "<Tab>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-n>"
	end
	return "<Tab>"
end, { expr = true })

vim.keymap.set("i", "<S-Tab>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-p>"
	end
	return "<S-Tab>"
end, { expr = true })

vim.keymap.set("i", "<CR>", function()
	if vim.fn.pumvisible() == 1 then
		return "<C-y>"
	end
	return "<CR>"
end, { expr = true })
