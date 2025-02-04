return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"saghen/blink.cmp",
		},
		config = function()
			require("codecompanion").setup({
				adapters = {
					completion = {
						-- Use Blink's completion
						provider = "blink",
					},
				},
			})
		end,
	},
}
