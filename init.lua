require("owenrabe.core")
require("owenrabe.lazy")
local separator = package.config:sub(0, 1)
if separator == "\\" then
	vim.o.shell = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"
elseif separator == "/" then
	vim.o.shell = "/bin/fish"
end
