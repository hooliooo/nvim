return {
  "mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        PATH = "append",
      },
    },
    "neovim/nvim-lspconfig",
  },
}
