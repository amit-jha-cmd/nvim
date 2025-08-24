-- Toggle multiple terminals
vim.keymap.set("n", "<leader>1", ":ToggleTerm 1<CR>", { desc = "Terminal 1" })
vim.keymap.set("n", "<leader>2", ":ToggleTerm 2<CR>", { desc = "Terminal 2" })
vim.keymap.set("n", "<leader>3", ":ToggleTerm 3 direction=float<CR>", { desc = "Terminal 3 (float)" })
