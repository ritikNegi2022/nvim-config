vim.g.mapleader = " "
local map = vim.keymap.set

-- map("n","<leader>e", ":Ex<CR>",{desc = "Open Explorer"})
map("n", "<leader>o", "<CMD>update<CR> :source<CR>", { desc = "Update and source current file" })
map("n", "<leader>w", "<CMD>write<CR>", { desc = "Save current buffer" })
map("n", "<leader>q", "<CMD>quit<CR>", { desc = "Quit nvim" })
map("n", "<Esc>", "<CMD>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Y to EOL
map("n", "Y", "y$", { desc = "Yank to end of line" })

-- Center screen when jumping
map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Better paste behavior
map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Delete without yanking
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Buffer navigation
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Move lines up/down
map("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
map("v", "<", "<gv", { desc = "Indent left and reselect" })
map("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Copy Full File-Path
map("n", "<leader>pa", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("file:", path)
end)
