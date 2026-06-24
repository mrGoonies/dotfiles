vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>ww", ":wq<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>qq", ":q!<CR>")

-- Remap for nvim-tree
vim.keymap.set("n", "<C-h>", ":NvimTreeFocus<CR>") -- Moves directly to Nvim-tree
vim.keymap.set("n", "<C-h>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "\\", ":NvimTreeToggle<CR>") -- Open and close nvim-tree
vim.keymap.set("n", "<C-l>", "<C-w>w") -- Move directly to editor with nvim-tree open


vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

  -- disable netrw at the very start of your init.lua
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- optionally enable 24-bit colour
  vim.opt.termguicolors = true

  -- empty setup using defaults
  require("nvim-tree").setup()

  -- OR setup with a config

  ---@type nvim_tree.config
  local config = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
  require("nvim-tree").setup(config)
