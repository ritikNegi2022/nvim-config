local config_path = vim.fn.stdpath("config") .. "/lua/configs"

for _, file in ipairs(vim.fn.glob(config_path .. "/*.lua", true, true)) do
  if not file:match("init%.lua$") then
    local module = file:match("lua/(.*)%.lua$")
    require(module)
  end
end
