-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "owenrabe.plugins" },
		{ import = "owenrabe.plugins.lsp" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "onehalfdark" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
vim.cmd("colorscheme onehalfdark")
vim.api.nvim_set_hl(0, "AlphaA", { fg = "#53C670", bg = "NONE" })
vim.api.nvim_set_hl(0, "AlphaB", { fg = "#3399ff", bg = "NONE" })
vim.api.nvim_set_hl(0, "AlphaG", { fg = "#39ac56", bg = "NONE" })
vim.api.nvim_set_hl(0, "AlphaH", { fg = "#33994d", bg = "NONE" })
vim.api.nvim_set_hl(0, "AlphaI", { fg = "#33994d", bg = "#39ac56" }) -- No background color
vim.api.nvim_set_hl(0, "AlphaJ", { fg = "#53C670", bg = "#33994d" }) -- No background color
vim.api.nvim_set_hl(0, "AlphaK", { fg = "#30A572", bg = "NONE" })
