-- #######################################################################
-- Options ###############################################################
-- #######################################################################
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.confirm = true
vim.opt.list = true
vim.opt.mouse = 'a'

-- #######################################################################
-- Misc ##################################################################
-- #######################################################################

-- Clipboard (syncs to OS clipboard)
vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})


-- #######################################################################
-- Leaders ###############################################################
-- #######################################################################
vim.g.mapleader = " "
vim.gmaplocalleader = ","

-- #######################################################################
-- Remap.sets ############################################################
-- #######################################################################
vim.keymap.set("n", "<leader>ep", ":Explore<CR>")
vim.keymap.set("n", "<leader>ev", ":vsplit $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>")

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')

-- Add quotes around word under cursor
vim.keymap.set("n", "<leader>'", [[viwdi'<esc>pa'<esc>]])
vim.keymap.set("n", "<leader>\"", [[viwdi"<esc>pa"<esc>]])

vim.keymap.set("v", "<leader>\"", [[d<esc>i"<esc>pa"<esc>]])
vim.keymap.set("v", "<leader>'", [[d<esc>i'<esc>pa'<esc>]])

-- Line navigation
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Insert-mode escape
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "<esc>", "<nop>")

-- #######################################################################
-- Autocmds ################################################################
-- #######################################################################

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- #######################################################################
-- Plugins Config ########################################################
-- #######################################################################
require("config.lazy")

-- #######################################################################
-- Current Pain Points ###################################################
-- #######################################################################
