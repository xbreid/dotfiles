local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.g.have_nerd_font = true

require("vim-options")
require("lazy").setup("plugins")

MYHOME = os.getenv("HOME")
vim.g.python3_host_prog = MYHOME .. "/.pyenv/versions/neovim/bin/python"
