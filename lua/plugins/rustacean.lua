return {
	"mrcjkb/rustaceanvim",
	version = "^8", -- Recommended for stability
	lazy = false, -- This plugin is already lazy-loaded by filetype
	init = function()
		local extension_path = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension"
		local codelldb_path = extension_path .. "/adapter/codelldb"
		local liblldb_path = extension_path .. "/lldb/lib/liblldb"

		local this_os = vim.uv.os_uname().sysname

		-- The path is different on Windows
		if this_os:find("Windows") then
			codelldb_path = extension_path .. "adapter\\codelldb.exe"
			liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
		else
			-- The liblldb extension is .so for Linux and .dylib for MacOS
			liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
		end

		local cfg = require("rustaceanvim.config")
		vim.g.rustaceanvim = {
			-- DAP configuration
			dap = {
				adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
			},

			-- LSP configuration
			server = {
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<leader>dRd", function()
						vim.cmd.RustLsp("debug")
					end, { desc = "Rust debug at the cursor position" })

					vim.keymap.set("n", "<leader>dRD", function()
						vim.cmd.RustLsp("debuggables")
					end, { desc = "Select a Rust debug configuration" })
				end,
				default_settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {
						assist = {
							importEnforceGranularity = true,
							importPrefix = "crate",
						},
						cargo = {
							allFeatures = true,
						},
						check = {
							command = "clippy",
							allFeatures = true,
						},
						checkOnSave = true,
						inlayHints = {
							lifetimeElisionHints = {
								enable = true,
								useParameterNames = true,
							},
						},
					},
				},
			},
		}
	end,
}
