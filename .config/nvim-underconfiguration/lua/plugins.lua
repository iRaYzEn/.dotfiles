-- sets up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- rtp => run time path going through every file and checking it if it has a code that could
-- be use for a certain plugin
vim.opt.rtp:prepend(lazypath)
-- the alternative to use this so, just use : instead of adding the run time path 
-- as the first agemunt the the function
-- vim.opt.rtp.prepend(vim.opt.rtp, lazypath)
require("lazy").setup({
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup ({
                -- A list of parser names, or "all" (the five listed parsers should always be installed)
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "css", "html" },

                auto_install = true,

                highlight = {
                    enable = true,
                },
            })
        end,
    },
})
