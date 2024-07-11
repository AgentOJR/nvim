-- Leader Key
vim.g.mapleader = " "

-- General
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")
--Find

vim.keymap.set("n", "<leader>fv", "<cmd>Ex<cr>")

--Telescope

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")

vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- Conform Formatting
vim.keymap.set("n", "<leader>f", "<cmd>lua require('conform').format()<cr>", { desc = "Format" })

-- Start And End of File Jump (Big H and Big L)
vim.keymap.set({ "n", "x", "o" }, "H", "^")
vim.keymap.set({ "n", "x", "o" }, "L", "$")
