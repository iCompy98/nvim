set softtabstop=4
set tabstop=4
set relativenumber
set nu
set nohlsearch
set hidden 
set nowrap
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

call plug#begin('~/.vim/autoload/')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'ThePrimeagen/harpoon'
Plug 'ThePrimeagen/git-worktree.nvim'
"Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'preservim/nerdtree'
Plug 'KabbAmine/zeavim.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()
lua << EOF
require 'lspconfig'.denols.setup{}
EOF

let mapleader=" "
"nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

"Gruvbox colorschema
autocmd vimenter * ++nested colorscheme gruvbox

"The telescope
nnoremap <leader>ps <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>pg <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>

"The maniatic Harpoon! by ThePrimeagen
nnoremap <leader>ha <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>h1 <cmd>lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>h2 <cmd>lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <leader>h3 <cmd>lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <leader>h4 <cmd>lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <leader>hm <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>

"Remaps by ThePrimeagen
    "Moving text
    vnoremap J :m '>+1<CR>gv=gv 
    vnoremap K :m '<-2<CR>gv=gv 
    inoremap <C-j> :m .+1<CR>== 
    inoremap <C-k> :m .-2<CR>==
    nnoremap <leader>j :m .+1<CR>==
    nnoremap <leader>k :m .-2<CR>==

"Custom shortkeys
"nnoremap <leader>cx :wq<cr>
nnoremap <leader>cs :w<cr>
nnoremap <leader>cx :q<cr>
nnoremap <leader>ce :Ex<cr>
nnoremap <leader>ca :wa<cr>
imap <C-BS> <C-W>

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"ZeaVim
nnoremap <leader>z :Zeavim!<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"nable mouse click for nvim
"set mouse=a
"Fix cursor replacement after closing nvim
"set guicursor= "Shift + Tab does inverse tab
"inoremap <S-Tab> <C-d>
set guicursor=i:ver25-iCursor
"See invisible characters
"set list listchars=tab:>\ ,trail:+,eol:$"

"wrap to next line when end of line is reached
"set whichwrap+=<,>,[,]
