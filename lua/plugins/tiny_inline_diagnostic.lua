return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    vim.diagnostic.config({ virtual_text = false }) -- don't use neovim's default virtual_text
    require("tiny-inline-diagnostic").setup({
      options = {
        show_source = true,
        multiple_diag_under_cursor = true,
        -- break_line = {
        -- 	enabled = true,
        -- 	after = 60,
        -- }
      },
    })
  end,
}
