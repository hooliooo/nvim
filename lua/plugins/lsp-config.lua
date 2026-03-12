return {
  {
    "mason-org/mason.nvim",
    opts = {
      PATH = "append",
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {},
  },
}
