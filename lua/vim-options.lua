-- Visua Options --
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

-- Leader Options
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Remap Options
vim.cmd("nnoremap <leader>ep :Explore<cr>")
vim.cmd("nnoremap <leader>ev :vsplit ~/.config/nvim/lua/vim-options.lua<cr>")
vim.cmd("nnoremap <leader>sv :source ~/.config/nvim/lua/vim-options.lua<cr>")

-- Add single quotes around the word under the cursor
vim.cmd("nnoremap <leader>' viwdi'<esc>pa'<esc>")

-- Add double quotes around the word under the cursor
vim.cmd("nnoremap <leader>\" viwdi\"<esc>pa\"<esc>")

vim.cmd("vnoremap <leader>\" d<esc>i\"<esc>pa\"<esc>")
vim.cmd("vnoremap <leader>' d<esc>i'<esc>pa'<esc>")

vim.cmd("nnoremap H ^")
vim.cmd("nnoremap L $")

vim.cmd("inoremap jk <esc>")
vim.cmd("inoremap <esc> <nop>")
