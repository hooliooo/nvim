return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    -- Add new parsers to ensure_installed without overwriting
    vim.list_extend(opts.ensure_installed, {
      "elixir",
      "heex",
      "eex",
      "kotlin",
      "rust",
      "swift",
    })
  end,
}
