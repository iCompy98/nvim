vim.g.mapleader= " "
vim.keymap.set("n", "<leader>ce", ":Ex<CR>")
vim.keymap.set("n", "<leader>cx", ":q<CR>")
vim.keymap.set("n", "<leader>cs", ":w<CR>")
vim.keymap.set("n", "<leader>ca", ":wa<CR>")

--Remaps by ThePrimeagen
    --Moving text
    --vim.keymap.set("v", J :m '>+1<CR>gv=gv 
    --vim.keymap.set("v", K :m '<-2<CR>gv=gv 
    --vim.keymap.set("i", <C-j> :m .+1<CR>== 
    --vim.keymap.set("i", <C-k> :m .-2<CR>==
    --vim.keymap.set("n", <leader>j :m .+1<CR>==
    --vim.keymap.set("n", <leader>k :m .-2<CR>==

--Custom shortkeys
--vim.keymap.set("n", <leader>cx :wq<cr>
--vim.keymap.set("n", <leader>cs :w<cr>
--vim.keymap.set("n", <leader>cx :q<cr>
--vim.keymap.set("n", <leader>ce :Ex<cr>
--vim.keymap.set("n", <leader>ca :wa<cr>
--imap <C-BS> <C-W>
