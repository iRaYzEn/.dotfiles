-- init.lua
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "intelephense" },
})

local lspconfig = require('lspconfig')

lspconfig.intelephense.setup({
    on_attach = function(client, bufnr)
        -- Your custom on_attach function
        print("Intelephense attached to buffer " .. bufnr)
    end,
    flags = {
        debounce_text_changes = 150,
    },
    settings = {
        intelephense = {
            files = {
                maxSize = 5000000,
            },
        },
    },
})
