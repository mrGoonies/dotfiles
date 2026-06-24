return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  module = "telescope",

  config = function()
    require('telescope').setup({})

    local builtin = require('telescope.builtin')
    local keymap = vim.keymap

    keymap.set("n", "<leader>fg", builtin.git_files, {})
    keymap.set("n", "<leader>fr", builtin.live_grep, {})
    keymap.set("n", "<leader>ff", builtin.find_files, {})
    keymap.set("n", "<leader>fb", builtin.buffers, {})
    keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")

    keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
  end
}
