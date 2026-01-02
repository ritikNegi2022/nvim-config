pack("folke/snacks.nvim")

local snacks = require("snacks")

snacks.setup({})

-- keymaps
local map = vim.keymap.set

map("n", "<leader>lg", function()
	snacks.lazygit()
end, { desc = "Lazygit" })

map("n", "<leader>sw", function()
	snacks.picker.grep_word()
end, { desc = "Grep visual selection or word" })

map("n", "<leader>pc", function()
	snacks.picker.todo_comments()
end, { desc = "Todo comment picker" })

map("n", "<leader>pt", function()
	snacks.picker.todo_comments({ keywords = { "TODO" } })
end, { desc = "Todo comment picker (TODO)" })

map("n", "<leader>pf", function()
	snacks.picker.todo_comments({ keywords = { "FIX", "FIXME", "BUG", "FIXIT", "ISSUE" } })
end, { desc = "Todo comment picker (FIX)" })

map("n", "<leader>ph", function()
	snacks.picker.todo_comments({ keywords = { "HACK" } })
end, { desc = "Todo comment picker (HACK)" })

map("n", "<leader>pw", function()
	snacks.picker.todo_comments({ keywords = { "WARN", "WARNING", "XXX" } })
end, { desc = "Todo comment picker (WARN)" })

map("n", "<leader>pp", function()
	snacks.picker.todo_comments({ keywords = { "PERF", "OPTIM", "PERFORMANCE", "OPTIMIZE" } })
end, { desc = "Todo comment picker (PERFORMANCE)" })

map("n", "<leader>pi", function()
	snacks.picker.todo_comments({ keywords = { "INFO", "NOTE" } })
end, { desc = "Todo comment picker (INFO)" })

map("n", "<leader>pt", function()
	snacks.picker.todo_comments({ keywords = { "TEST", "TESTING", "PASSED", "FAILED" } })
end, { desc = "Todo comment picker (TEST)" })
