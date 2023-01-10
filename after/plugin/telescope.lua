local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({
        file_ignore_patterns = { "node_modules/" },
    })
end)
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search= vim.fn.input("Grep > ")});
end)
