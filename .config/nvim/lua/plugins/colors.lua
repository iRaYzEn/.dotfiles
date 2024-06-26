return {
    "rose-pine/neovim",
    -- "morhetz/gruvbox",
    name = "rose-pine",
    config = function()
        disable_background = true

        function ColorMyPencils(color)
            color = color or "rose-pine-main"
            -- color = color or "gruvbox"
            vim.cmd.colorscheme(color)

            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end

        ColorMyPencils()

    end,
}
