pack("stevearc/oil.nvim", "nvim-tree/nvim-web-devicons")

local oil = require("oil")

oil.setup({
	default_file_explorer = true,
	columns = {
		"icon",
	},
	constrain_cursor = "editable",
	watch_for_changes = false,
	keymaps = {
		["<C-h>"] = false,
		["<C-c>"] = false,
		["<M-h>"] = "actions.select_split",
		["q"] = "actions.close",
	},
	delete_to_trash = false,
	view_options = {
		show_hidden = true,
	},
	skip_confirm_for_simple_edits = true,
	float = {
		padding = 2,
		max_width = 0.7,
		max_height = 0.7,
		border = "rounded",
	},
})

vim.keymap.set("n", "<leader>E", "<CMD>Oil<CR>", { desc = "Open oil explorer" })
vim.keymap.set("n", "<leader>e", oil.toggle_float, { desc = "Open oil explorer" })

-- autocmd
vim.api.nvim_create_autocmd("FileType", {
	pattern = "oil",
	callback = function()
		vim.keymap.set("n", "q", "<CMD>close<CR>")
	end,
})
