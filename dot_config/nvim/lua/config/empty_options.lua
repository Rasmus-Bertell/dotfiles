-- Change the leader key to space
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader      = ' '
vim.g.maplocalleader = ' '

-- Set absolute character limit and guides at and before it
vim.opt.textwidth   = 120
vim.opt.colorcolumn = "-0,-20,-40"
vim.opt.wrap        = false

-- Use space for indenting and use 8 characters by default
vim.opt.expandtab   = true
vim.opt.smarttab    = true
vim.opt.smartindent = true
vim.opt.shiftwidth  = 8
vim.opt.tabstop     = 8
vim.opt.softtabstop = 8

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
