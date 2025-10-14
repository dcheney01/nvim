vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.cmd("nnoremap <leader>ev :vsplit ~/.config/nvim/lua/vim-options.lua<cr>")
vim.cmd("nnoremap <leader>sv :source ~/.config/nvim/lua/vim-options.lua<cr>")

require("config.lazy")
