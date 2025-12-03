vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	command = "setlocal shiftwidth=2 tabstop=2",
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp", "c++" },
	command = "setlocal cindent cinoptions+=L0",
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp", "c++" },
	command = "set cc=100",
})
vim.api.nvim_create_augroup("indent_2", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	command = "setlocal shiftwidth=2 tabstop=2",
	group = "indent_2",
})

vim.opt.pumheight = 10

local target_path = vim.fn.expand("~/.undodir")

if vim.fn.isdirectory(target_path) == 0 then
	vim.fn.mkdir(target_path, "p", "0700")
end

vim.opt.undodir = target_path
vim.opt.undofile = true
