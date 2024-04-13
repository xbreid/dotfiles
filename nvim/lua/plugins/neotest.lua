return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"sidlatau/neotest-dart",
		"nvim-neotest/neotest-go",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-go"),
				require("neotest-dart")({
					command = "flutter",
					use_lsp = true,
					custom_test_method_names = {},
				}),
			},
		})

		vim.keymap.set("n", "<leader>tt", function()
			require("neotest").output_panel.clear()
			require("neotest").output_panel.open()
			require("neotest").run.run()
		end, {})

		vim.keymap.set("n", "<leader>tf", function()
			require("neotest").output_panel.clear()
			require("neotest").output_panel.open()
			require("neotest").run.run(vim.fn.expand("%"))
		end, {})

		vim.keymap.set("n", "<leader>tc", function()
			require("neotest").output_panel.clear()
			require("neotest").output_panel.close()
		end, {})
	end,
}
