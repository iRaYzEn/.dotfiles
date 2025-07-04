return {
    -- "xero/miasma.nvim",
    -- "rose-pine/neovim",
    -- "fcpg/vim-fahrenheit",
    "morhetz/gruvbox",
    -- "catppuccin/nvim",
    -- "folke/tokyonight.nvim",
    config = function()

        function ColorMyPencils(color)
            -- color = color or "miasma"
            -- color = color or "rose-pine-main"
            -- color = color or "fahrenheit"
            color = color or "gruvbox"
            -- color = color or "catppuccin"
            -- color = color or "tokyonight"
            vim.cmd.colorscheme(color)
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end

        ColorMyPencils()
    end,
}
