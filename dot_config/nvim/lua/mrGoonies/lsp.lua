-- change lsp message with icons
local severity = vim.diagnostic.severity

vim.diagnostic.config({
  underline = true,
  severity_sort = true,
  virtual_text = {
    spacing = 4,
    source = "if_many",
    prefix = "●", -- String prefix for inline text
  },
  signs = {
    text = {
      [severity.ERROR] = "",
      [severity.WARN]  = "",
      [severity.HINT]  = "",
      [severity.INFO]  = "",
    },
  },
})


-- Setup C#
vim.lsp.config("roslyn", {})
