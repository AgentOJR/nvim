return {
	"nvim-lualine/lualine.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local lualine = require("lualine")
		lualine.setup({})
	end,
}
