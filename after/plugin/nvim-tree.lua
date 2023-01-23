vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require"nvim-tree".setup{
    diagnostics = {enable =true},
    --highlight = {enable =true},
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            }
        }
    }
}

vim.keymap.set("n","<leader>n", ":NvimTreeToggle<CR>")
