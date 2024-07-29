return {
<<<<<<< HEAD
    -- "rose-pine/neovim",
    "morhetz/gruvbox",
    -- "catppuccin/nvim",
=======
    "rose-pine/neovim",
    -- "morhetz/gruvbox",
>>>>>>> 9ece574646a87c1f691bd1d4b7310b9c31854a03
    config = function()

        function ColorMyPencils(color)
<<<<<<< HEAD
            -- color = color or "rose-pine-main"
            color = color or "gruvbox"
            -- color = color or "catppuccin"
=======
            color = color or "rose-pine-main"
            -- color = color or "gruvbox"
>>>>>>> 9ece574646a87c1f691bd1d4b7310b9c31854a03
            vim.cmd.colorscheme(color)
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end

        ColorMyPencils()
    end,
}
