-- Change the leader key to space
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set absolute character limit and guides at and before it
vim.opt.textwidth = 120
vim.opt.colorcolumn = "-0,-20,-40"
vim.opt.wrap = false
