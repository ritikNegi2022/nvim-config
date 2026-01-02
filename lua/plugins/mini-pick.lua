pack("nvim-mini/mini.pick")

local mini_pick = require("mini.pick")

mini_pick.setup()

vim.keymap.set("n", "<leader>h", "<CMD>Pick help<CR>", {desc = "Help picker"})
vim.keymap.set("n", "<leader>ff", "<CMD>Pick files<CR>", {desc = "File picker"})
vim.keymap.set("n", "<leader>fb", "<CMD>Pick buffers<CR>", {desc = "Buffer picker"})
vim.keymap.set("n", "<leader>fw", "<CMD>Pick grep_live<CR>", {desc = "Grep word (live)"})


