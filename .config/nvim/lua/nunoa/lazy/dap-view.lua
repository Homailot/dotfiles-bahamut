return {
	"igorlfs/nvim-dap-view",
	---@module 'dap-view'
	---@type dapview.Config
	opts = {
		windows = {
			terminal = {
				position = "right",
				--				start_hidden = false,
			},
		},
		auto_toggle = true,
	},
	keys = {},
	lazy = false,
}
