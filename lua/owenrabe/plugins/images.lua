local separator = package.config:sub(0, 1)
if separator == "\\" then
	return {}
elseif separator == "/" then
	-- return {
	-- 	"3rd/image.nvim",
	-- 	build = true, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
	-- 	opts = {
	-- 		enable = false,
	-- 	},
	-- }
	return {}
end
