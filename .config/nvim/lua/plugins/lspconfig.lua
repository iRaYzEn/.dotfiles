return { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
        'saghen/blink.cmp',
        -- Automatically install LSPs and related tools to stdpath for Neovim
        { 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',

        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },

    },
    config = function()
        local lspconfig = require("lspconfig")

        local capabilities = require('blink.cmp').get_lsp_capabilities()
        lspconfig.lua_ls.setup {capabilities = capabilities}
        lspconfig.ts_ls.setup({
            capabilities = capabilities,
            -- dissabling the stupid suggestions
            init_options = {
                preferences = {
                    disableSuggestions = true,
                }
            }
    })
        lspconfig.clangd.setup({})

        vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions)
        vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
        vim.keymap.set('n', 'gI', require('telescope.builtin').lsp_implementations)
        vim.keymap.set('n', '<leader>D', require('telescope.builtin').lsp_type_definitions)
        vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols)
        vim.keymap.set('n', '<leader>ss', require('telescope.builtin').lsp_dynamic_workspace_symbols)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
        vim.keymap.set('n', "<leader>vd", function() vim.diagnostic.open_float() end)
    end,
}


-- local map = function(keys, func, desc)
--     vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
-- end
--
-- -- Jump to the definition of the word under your cursor.
-- --  This is where a variable was first declared, or where a function is defined, etc.
-- --  To jump back, press <C-t>.
-- map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
--
-- -- Find references for the word under your cursor.
-- map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
--
-- -- Jump to the implementation of the word under your cursor.
-- --  Useful when your language has ways of declaring types without an actual implementation.
-- map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
--
-- -- Jump to the type of the word under your cursor.
-- --  Useful when you're not sure what type a variable is and you want to see
-- --  the definition of its *type*, not where it was *defined*.
-- map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
--
-- -- Fuzzy find all the symbols in your current document.
-- --  Symbols are things like variables, functions, types, etc.
-- map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
--
-- -- Fuzzy find all the symbols in your current workspace.
-- --  Similar to document symbols, except searches over your entire project.
-- map('<leader>ss', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
--
-- -- Rename the variable under your cursor.
-- --  Most Language Servers support renaming across files, etc.
-- map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
--
-- -- Execute a code action, usually your cursor needs to be on top of an error
-- -- or a suggestion from your LSP for this to activate.
-- map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
--
-- -- Opens a popup that displays documentation about the word under your cursor
-- --  See `:help K` for why this keymap.
-- map('K', vim.lsp.buf.hover, 'Hover Documentation')
--
-- -- WARN: This is not Goto Definition, this is Goto Declaration.
-- --  For example, in C this would take you to the header.
-- map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
--
-- map("<leader>vd", function() vim.diagnostic.open_float() end,
-- "displays the error in a floating thing from thePrimeagen")
