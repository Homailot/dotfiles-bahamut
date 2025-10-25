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
	command = "set cc=120",
})

vim.opt.pumheight = 10
