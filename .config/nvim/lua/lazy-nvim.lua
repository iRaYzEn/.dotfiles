-- set s up lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
    -- why we use this / its because of the synchronous behavior of lua so if
    -- the plugin is not exist then we don't run it
    -- {
    --     "rose-pine/neovim",
    --     as = "rose-pine",
    --     -- config = function()
    --         -- vim.cmd.colorscheme("rose-pine")
    --         -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         -- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    --     -- end,
    -- },
    --
    -- {
    --     "nvim-treesitter/nvim-treesitter",
    -- },
    -- {
    --     "neovim/nvim-lspconfig",
    -- },
    -- {
    --     "williamboman/mason.nvim",
    --     config = function()
    --         require("mason").setup()
    --     end,
    -- },
    -- {
    --     "williamboman/mason-lspconfig.nvim",
    --     dependencies = { "mason.nvim" },
    --     config = function()
    --         require("mason-lspconfig").setup()
    --         require("mason-lspconfig").setup_handlers({
    --             function(server_name)
    --                 require("lspconfig")[server_name].setup({})
    --             end,
    --         })
    --     end,
    -- }
