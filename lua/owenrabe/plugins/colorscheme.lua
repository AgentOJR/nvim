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
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		-- Add in any other configuration;
		--   event = foo,
		--   config = bar
		--   end,
	},
	{
		dir = "~/Documents/Colourschemes/onehalf-owenbranch/",
		lazy = false,

		priority = 1000,
	},
}
