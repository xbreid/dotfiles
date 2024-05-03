vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set nu rnu")
-- vim.cmd("set colorcolumn=120")

vim.api.nvim_set_keymap("n", "<leader>ft", ":<C-u>TodoTelescope<CR>", { noremap = true, silent = true })

vim.diagnostic.config({
	float = { border = "rounded" },
})
