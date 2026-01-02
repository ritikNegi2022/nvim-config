pack("nvim-mini/mini.ai")

local mini_ai = require("mini.ai")

mini_ai.setup({
	custom_textobjects = {
		f = false,
		a = false,
		g = function()
			local from = { line = 1, col = 1 }
			local to = {
				line = vim.fn.line("$"),
				col = math.max(vim.fn.getline("$"):len(), 1),
			}
			return { from = from, to = to }
		end,
	},
})
