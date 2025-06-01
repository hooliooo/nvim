return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Add or override formatters for specific filetypes
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.rust = { "rustfmt", lsp_format = "fallback" }
  end,
}
