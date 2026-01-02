pack("nvim-mini/mini.files")

local mini_files = require("mini.files")

mini_files.setup({})

-- keymaps
vim.keymap.set("n", "<leader>mf", mini_files.open, {desc = "Open mini files explorer"})
