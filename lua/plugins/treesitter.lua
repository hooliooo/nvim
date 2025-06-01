return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Add new parsers to ensure_installed without overwriting
    vim.list_extend(opts.ensure_installed, {
      "rust",
      "kotlin",
      "swift",
    })
  end,
}
