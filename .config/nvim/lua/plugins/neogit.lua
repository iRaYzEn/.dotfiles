return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "sindrets/diffview.nvim", -- optional - Diff integration
        -- Only one of these is needed.
        "nvim-telescope/telescope.nvim", -- optional
        "ibhagwan/fzf-lua",          -- optional
    },
    config = function()
        local neogit = require("neogit")
        -- i have to check out what is the silent and noremap
        vim.keymap.set("n", "<leader>gs", neogit.open, {silent = true, noremap = true})
    end,
}
