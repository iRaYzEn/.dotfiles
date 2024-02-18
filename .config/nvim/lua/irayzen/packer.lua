vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("theprimeagen/harpoon")
	use("mattn/emmet-vim")
	use("theprimeagen/refactoring.nvim")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("nvim-treesitter/nvim-treesitter-context")
	use("nvim-treesitter/nvim-treesitter-textobjects")
	-- a game via thePrimeagen
	use("ThePrimeagen/vim-be-good")
	-- comment stuff
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- auto closing the brackets or the "" or any other thing
	use("windwp/nvim-autopairs")
	-- colorscheme
	use("folke/tokyonight.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("AlexvZyl/nordic.nvim")
	use("dylanaraps/wal.vim")
	-- colorizer
	use("norcalli/nvim-colorizer.lua")
	use("nvim-telescope/telescope-symbols.nvim")
	-- nvim tree
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	-- multi visual line
	use("mg979/vim-visual-multi")
    -- instead of null-ls
    use("nvimtools/none-ls.nvim")

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use("folke/zen-mode.nvim")
end)
