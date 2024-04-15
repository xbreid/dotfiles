return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			transparent_background = true,
			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.overlay1 },
				}
			end,
			integrations = {
				cmp = true,
				gitsigns = true,
				neotree = true,
				treesitter = true,
				notify = true,
				noice = true,
				telescope = {
					enabled = true,
				},
				indent_blankline = {
					enabled = true,
					scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
					colored_indent_levels = false,
				},
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
