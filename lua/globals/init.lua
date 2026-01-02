_G.pack = function(...)
local args = { ... }
  for i = 1, #args do
    args[i] = "https://github.com/" .. args[i]
  end
  vim.pack.add(args)
end

_G.map = vim.keymap.set
_G.opt = vim.opt

_G.capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true
