return {
	--	{ "github/copilot.vim", event = "BufReadPre" },

	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({})
	end,
}
