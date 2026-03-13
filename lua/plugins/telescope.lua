return {
  "nvim-telescope/telescope.nvim",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  keys = {
    vim.keymap.set("n", "<C-p>", function() require("telescope.builtin").find_files() end, { desc = "Find files via Telescope" }),
    vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { desc = "Telescope Live Grep" }),
    vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "Find in buffers via Telescope" }),
    vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Find help tags via Telescope" }),
  },
}
