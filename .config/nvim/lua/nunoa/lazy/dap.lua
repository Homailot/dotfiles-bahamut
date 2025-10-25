return {
	"mfussenegger/nvim-dap",
	config = function()
		vim.keymap.set("n", "<leader>d<space>", ":DapContinue<CR>")
		vim.keymap.set("n", "<leader>dl", ":DapStepInto<CR>")
		vim.keymap.set("n", "<leader>dj", ":DapStepOver<CR>")
		vim.keymap.set("n", "<leader>dh", ":DapStepOut<CR>")
		vim.keymap.set("n", "<leader>dz", ":ZoomWinTabToggle<CR>")
		vim.keymap.set("n", "<leader>d-", function()
			require("dap").restart()
		end)
		vim.keymap.set("n", "<leader>d_", function()
			require("dap").terminate()
		end)

		local dap = require("dap")
		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
		}

		dap.configurations.c = {
			{
				name = "Launch",
				type = "gdb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				args = {}, -- provide arguments if needed
				cwd = "${workspaceFolder}",
				stopAtBeginningOfMainSubprogram = false,
			},
			{
				name = "Select and attach to process",
				type = "gdb",
				request = "attach",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				pid = function()
					local name = vim.fn.input("Executable name (filter): ")
					return require("dap.utils").pick_process({ filter = name })
				end,
				cwd = "${workspaceFolder}",
			},
			{
				name = "Attach to gdbserver :1234",
				type = "gdb",
				request = "attach",
				target = "localhost:1234",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
			},
		}
		dap.configurations.cpp = dap.configurations.c
	end,
	keys = {
		{
			"<leader>do",
			function()
				require("dap-view").open()
				require("dap").continue()
			end,
		},
		{
			"<leader>d-",
			function()
				require("dap-view").close()
				require("dap").terminate()
			end,
		},
		{ "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>" },
		{ "<leader>dd", "<cmd>lua require('dap').continue()<cr>" },
	},
	dependencies = {
		"igorlfs/nvim-dap-view",
	},
	lazy = true,
}
