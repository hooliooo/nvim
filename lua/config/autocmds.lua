-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "rust" },
  callback = function()
    local opts = { noremap = true, silent = true, buffer = true }

    -- Expand Macro
    vim.keymap.set(
      "n",
      "<leader>rme",
      require("ferris.methods.expand_macro"),
      vim.tbl_extend("force", opts, { desc = "Expand Macro" })
    )

    -- View Memory Layout
    vim.keymap.set(
      "n",
      "<leader>rvl",
      require("ferris.methods.view_memory_layout"),
      vim.tbl_extend("force", opts, { desc = "View Memory Layout" })
    )

    -- View High-level Intermediate Representation (HIR)
    vim.keymap.set(
      "n",
      "<leader>rvh",
      require("ferris.methods.view_hir"),
      vim.tbl_extend("force", opts, { desc = "View HIR" })
    )

    -- View Mid-level Intermediate Representation (MIR)
    vim.keymap.set(
      "n",
      "<leader>rvm",
      require("ferris.methods.view_mir"),
      vim.tbl_extend("force", opts, { desc = "View MIR" })
    )

    local wk = require("which-key")

    -- Register prefix descriptions
    wk.add({
      { "<leader>r", group = "Rust Keymaps" },
      { "<leader>rm", group = "Macro related Keymaps" },
      { "<leader>rv", group = "View related Keymaps" },
    })
  end,
})
