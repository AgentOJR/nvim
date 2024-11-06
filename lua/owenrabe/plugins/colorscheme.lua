return {
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end,
	},
	{
		"EdenEast/nightfox.nvim",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
