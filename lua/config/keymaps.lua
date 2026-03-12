-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.del("n", "<leader>fg")

-- stylua: ignore
vim.keymap.set("n", "<C-p>", function() require("telescope.builtin").find_files() end, { desc = "Find files via Telescope" })
-- stylua: ignore
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { desc = "Telescope Live Grep" })
-- stylua: ignore
vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "Find in buffers via Telescope" })
-- stylua: ignore
vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Find help tags via Telescope" })
