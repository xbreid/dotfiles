return {
	{
		"stevearc/oil.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				default_file_explorer = true,
				win_options = {
					signcolumn = "yes:2",
				},
			})

			vim.api.nvim_set_keymap("n", "-", "<cmd>Oil<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"refractalize/oil-git-status.nvim",

		dependencies = {
			"stevearc/oil.nvim",
		},

		config = true,
	},
}
