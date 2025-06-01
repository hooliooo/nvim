return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        mason = false,
        settings = {
          ["rust-analyzer"] = {
            assist = {
              importEnforceGranularity = true,
              importPrefix = "create",
            },
            cargo = {
              allFeatures = true,
            },
            checkOnSave = {
              command = "clippy",
              allFeatures = true,
            },
            inlayHints = {
              lifetimeElisionHints = {
                enable = true,
                useParameterNames = true,
              },
            },
          },
        },
      },
      sourcekit = {
        capabilities = {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
        },
      },
    },
  },
}
