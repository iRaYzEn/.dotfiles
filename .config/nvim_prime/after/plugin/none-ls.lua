local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({ extra_args = { "--tab-width=4", "--use-tabs" } }),
    },
})
