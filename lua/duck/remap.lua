vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4    -- number of visual spaces per TAB
vim.opt.shiftwidth = 4 -- spaces per indentation level

vim.diagnostic.config({
	virtual_text = true, -- show error inline text
	signs = true,     -- show signs in the gutter
	underline = true, -- underline the offending code
	update_in_insert = false,
	severity_sort = true,
})

-- This will show the errors in a floating dialog
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics" })

-- keep cursor centered
vim.opt.scrolloff = 999

vim.opt.splitbelow = true
-- Map Esc to exit terminal mode
vim.keymap.set('t', '<leader>et', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Toggle terminal with <leader>t
vim.keymap.set("n", "<leader>t", "<CMD>ToggleTerm<CR>", { desc = "Toggle terminal" })

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
