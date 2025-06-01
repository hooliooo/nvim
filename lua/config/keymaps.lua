-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope_builtin.find_files, { desc = "Find files via Telescope" })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope Live Grep" })
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Find in buffers via Telescope" })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Find help tags via Telescope" })
