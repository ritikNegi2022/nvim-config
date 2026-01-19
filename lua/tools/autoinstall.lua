local M = {}

-- All tools you want automatically installed via mason
M.tools = {
  -- LSP
  "lua-language-server",
  "typescript-language-server",
  "html-lsp",
  "tailwindcss-language-server",
  "marksman",
  "rust-analyzer",
  "python-lsp-server",
  "json-lsp",
  "bash-language-server",
  "emmet-language-server",

  -- Formatters
  "prettier",
  "stylua",
  "black",
  "beautysh",

  -- Linters
  "luacheck",
  "eslint_d",
  "htmlhint",
  "stylelint",
  "ruff",
  "jsonlint",
  "shellcheck",
  "trivy",
}

function M.setup()
  local mason_ok, mason_registry = pcall(function()
    return require("mason-registry")
  end)

  if not mason_ok then
    vim.notify("Mason not found (must load mason.nvim before this script)", vim.log.levels.ERROR)
    return
  end

  for _, pkg_name in ipairs(M.tools) do
    local ok, pkg = pcall(mason_registry.get_package, pkg_name)
    if ok then
      if not pkg:is_installed() then
        vim.schedule(function()
          vim.notify("Installing missing tool: " .. pkg_name, vim.log.levels.INFO)
          vim.cmd("MasonInstall " .. pkg_name)
        end)
      end
    else
      vim.notify("Mason package not found for: " .. pkg_name, vim.log.levels.WARN)
    end
  end
end

return M
