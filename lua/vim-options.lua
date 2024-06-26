vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set colorcolumn=100")

vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

vim.g.python3_host_prog = "~/.config/nvim/env/bin/python"

-- Start nvim with copilot disabled by default
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = "*",
	command = "Copilot disable",
})
