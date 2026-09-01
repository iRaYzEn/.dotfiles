return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
			-- vim.keymap.set('n', '<leader>ss', builtin.symbols, {})
			vim.keymap.set("n", "<leader>so", builtin.vim_options, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
