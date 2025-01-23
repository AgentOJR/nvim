-- Leader Key
vim.g.mapleader = " "

-- General
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader>mm", "<cmd>Alpha<cr>")
--Find

vim.keymap.set("n", "<leader>fv", "<cmd>Oil<cr>")

--Telescope

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")

vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Conform Formatting
vim.keymap.set("n", "<leader>f", "<cmd>lua require('conform').format()<cr>", { desc = "Format" })

-- Start And End of File Jump (Big H and Big L)
vim.keymap.set({ "n", "x", "o" }, "H", "^")
vim.keymap.set({ "n", "x", "o" }, "L", "$")

--LSP Binds
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Open Code Actions" })

--Timewaste
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

--Persistence
-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function()
	require("persistence").load()
end)

-- select a session to load
vim.keymap.set("n", "<leader>qS", function()
	require("persistence").select()
end)

-- load the last session
vim.keymap.set("n", "<leader>ql", function()
	require("persistence").load({ last = true })
end)

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function()
	require("persistence").stop()
end)
