return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "html",
        "cssls",
        "lua_ls",
        "emmet_ls",
        "eslint",
        "pyright",
        "emmet_language_server",
      },
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      }
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
            },
          },
        },
      },
      {
        "neovim/nvim-lspconfig",
      },
    },

  }
