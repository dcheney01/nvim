-- Visual Options --
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

-- Leader Options
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Remap Options
vim.cmd("nnoremap <leader>ev :vsplit ~/.config/nvim/lua/vim-options.lua<cr>")
vim.cmd("nnoremap <leader>sv :source ~/.config/nvim/lua/vim-options.lua<cr>")

-- Add quotes to words in normal mode
vim.cmd("nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel")
vim.cmd("nnoremap <leader>\" viw<esc>a\"<esc>bi\"<esc>lel")

vim.cmd("vnoremap <leader>\" <esc>a\"<esc>'<i\"<esc>")
vim.cmd("vnoremap <leader>' <esc>a'<esc>'<i'<esc>")

vim.cmd("nnoremap H ^")
vim.cmd("nnoremap L $")
