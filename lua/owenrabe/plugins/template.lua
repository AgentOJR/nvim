return {
	"glepnir/template.nvim",
	cmd = { "Template", "TemProject" },
	config = function()
		local function CreatePath()
			local separator = package.config:sub(0, 1)
			if separator == "\\" then
				return "C:\\Users\\OwenRabe\\AppData\\Local\\nvim\\lua\\owenrabe\\templates"
			elseif separator == "/" then
				return "~/.config/nvim/lua/owenrabe/templates"
			else
				return ""
			end
		end

		require("template").setup({
			-- config in there
			author = "Owen Rabe",
			email = "rabe9086@mylaurier.ca",
			temp_dir = CreatePath(),
		})
	end,
}
