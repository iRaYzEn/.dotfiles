return {
    -- "rose-pine/neovim",
    "morhetz/gruvbox",
    -- "catppuccin/nvim",
    config = function()

        function ColorMyPencils(color)
            -- color = color or "rose-pine-main"
            color = color or "gruvbox"
            -- color = color or "catppuccin"
            vim.cmd.colorscheme(color)
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end

        ColorMyPencils()
    end,
}
