return {
	"stevearc/oil.nvim",
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	config = function()
		local oil = require("oil")
		oil.setup({
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-h>"] = false,
			},
		})

		vim.keymap.set("n", "<leader>e", function()
			require("oil").open()
		end)
	end,
	lazy = false,
}
