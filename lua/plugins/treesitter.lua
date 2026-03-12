return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "printf",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    }
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
