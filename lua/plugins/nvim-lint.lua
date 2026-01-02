pack("mfussenegger/nvim-lint")

local lint = require("lint")

lint.linters_by_ft = {
	-- Lua
	lua = { "luacheck" },

	-- JS / TS (FAST)
	javascript = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },

	-- Web
	html = { "htmlhint" },
	css = { "stylelint" },

	-- Python
	python = { "ruff" }, -- ruff recommended if available

	-- JSON
	json = { "jsonlint" },

	-- Shell
	sh = { "shellcheck" },
	bash = { "shellcheck" },

	-- Infra / YAML
	yaml = { "trivy" },
}

-- autocmd
vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
	callback = function()
		lint.try_lint()
	end,
})

-- keybind
vim.keymap.set("n", "<leader>ll", function()
	lint.try_lint()
end, { desc = "Lint file" })
