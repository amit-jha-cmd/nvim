require('fzf-lua').setup({})

vim.keymap.set('n', '<leader><leader>', "<cmd>FzfLua files<CR>")
vim.keymap.set('n', '<leader>fg', "<cmd>FzfLua live_grep<CR>")
vim.keymap.set('n', '<leader>fb', "<cmd>FzfLua buffers<CR>")
vim.keymap.set('n', '<leader>fh', "<cmd>FzfLua help_tags<CR>")
