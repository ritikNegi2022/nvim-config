pack("nvim-mini/mini.pairs")

local mini_pairs = require("mini.pairs")

mini_pairs.setup({
	mappings = {
		["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
		[">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\]." },
		["|"] = { action = "open", pair = "||", neigh_pattern = "[^\\]." },
	},
})
