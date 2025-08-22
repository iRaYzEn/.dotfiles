return {
    {
        'ryanoasis/vim-devicons'
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = { signs = false }
    },
    {
        "olrtg/nvim-emmet",
        config = function()
            vim.keymap.set({ "n", "v" }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
        end,
    },
    {
        'brenoprata10/nvim-highlight-colors'
    },
    {
        'ThePrimeagen/vim-be-good'
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    -- colorschemes
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "savq/melange-nvim" },
    { "catppuccin/nvim",  name = "catppuccin", priority = 1000 },
    {
        'nvim-orgmode/orgmode',
        event = 'VeryLazy',
        ft = { 'org' },
        config = function()
            -- Setup orgmode
            require('orgmode').setup({
                org_agenda_files = '~/orgfiles/**/*',
                org_default_notes_file = '~/orgfiles/refile.org',
            })

            -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
            -- add ~org~ to ignore_install
            -- require('nvim-treesitter.configs').setup({
            --   ensure_installed = 'all',
            --   ignore_install = { 'org' },
            -- })
        end,
    },
    -- end colorschemes
}
