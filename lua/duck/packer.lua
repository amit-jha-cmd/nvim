-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	-- Mason (LSP/DAP/Linter/Formatter installer)
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- updates registry
	}

	-- Bridges Mason with lspconfig
	use "williamboman/mason-lspconfig.nvim"

	-- Neovim LSP configs
	use "neovim/nvim-lspconfig"

	-- Autocompletion plugins
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "saadparwaiz1/cmp_luasnip"
	use "L3MON4D3/LuaSnip"


	-- mason setup
	require("mason").setup()

	-- auto install some language servers
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "pyright", "ts_ls" },
	})

	use "neovim/nvim-lspconfig"

	require("packer").startup(function()
		use({
			"stevearc/oil.nvim",
			config = function()
				require("oil").setup()
			end,
		})
	end)

	use 'christoomey/vim-tmux-navigator'
	use {
		'akinsho/toggleterm.nvim',
		tag = '*',
		config = function()
			require("toggleterm").setup {
				direction = "horizontal", -- or "float" / "vertical"
				size = 15,
			}
		end
	}

end)
