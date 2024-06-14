require("options")
require("lazy-nvim")
require("remap")

-- require'lspconfig'.intelephense.setup{
--     root_dir = function(fname)
--         return require'lspconfig'.util.root_pattern('composer.json', '.git')(fname) or vim.loop.os_homedir()
--     end,
--     on_attach = function(client, bufnr)
--         -- Add your custom on_attach function here
--     end,
-- }


-- vim.lsp.start({
--     name = 'my-server-name',
--     cmd = {'name-of-language-server-executable'},
--     root_dir = vim.fs.root(0, {'setup.py', 'pyproject.toml'}),
-- })
