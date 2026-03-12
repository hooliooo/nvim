return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {

    vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, { desc = "Find files via Telescope" }),
    vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Telescope Live Grep" }),
    vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find in buffers via Telescope" }),
    vim.keymap.set(
      "n",
      "<leader>fh",
      require("telescope.builtin").help_tags,
      { desc = "Find help tags via Telescope" }
    ),
  },
}
