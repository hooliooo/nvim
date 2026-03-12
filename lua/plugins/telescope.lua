return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
  -- stylua: ignore
  keys = {
    { "<C-p>", function() require("telescope.builtin").find_files() end, desc = "Find files via Telescope" },
    { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Telescope Live Grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Find in buffers via Telescope" },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Find help tags via Telescope" },
  },
}
