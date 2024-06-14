local builtin = require('telescope.builtin')

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        }
    }
}

vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ss', builtin.symbols, {})
vim.keymap.set('n', '<leader>so', builtin.vim_options, {})
