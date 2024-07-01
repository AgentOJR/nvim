return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufWritePre" },
	opts = {},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "ruff_format" },
				-- Use a sub-list to run only the first available formatter
				javascript = { "biome" },
				typescript = { "biome" },
				cpp = { "clang-format" },
				c = { "clang-format" },
				java = { "clang-format" },
			},
		})
	end,
}
