-- Leader Key
vim.g.mapleader = " "

-- General
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")
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
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
