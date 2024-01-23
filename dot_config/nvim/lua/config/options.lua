-- Change the leader key to space
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader        = ' '
vim.g.maplocalleader   = ' '

-- Set absolute character limit and guides at and before it
vim.opt.textwidth      = 120
vim.opt.colorcolumn    = "-0,-20,-40"
vim.opt.wrap           = false

-- Use space for indenting and use 8 characters by default
vim.opt.expandtab      = true
vim.opt.smarttab       = true
vim.opt.smartindent    = true
vim.opt.shiftwidth     = 8
vim.opt.tabstop        = 8
vim.opt.softtabstop    = 8

-- Use system clipboard
vim.opt.clipboard      = "unnamedplus"

-- Show relative line numbers and always show sign column
vim.opt.signcolumn     = "yes"
vim.opt.number         = true
vim.opt.relativenumber = true

-- Split new windows below and to the right
vim.opt.splitbelow     = true
vim.opt.splitright     = true

-- Show hidden characters
vim.opt.list           = true
vim.opt.listchars      = {
        tab = "»·",
        trail = "·",
        extends = "…",
        precedes = "…",
        nbsp = "␣"
}

-- Use case insensitive search, highlight matches and show search state
vim.opt.ignorecase     = true
vim.opt.smartcase      = true
vim.opt.hlsearch       = true
vim.opt.incsearch      = true

-- Use a single status line
vim.opt.laststatus     = 3

-- Disable messages when changing modes
vim.opt.showmode       = false

-- Disable swap files
vim.opt.swapfile       = false

-- Enable backup and undo
vim.opt.backup         = true
vim.opt.backupdir      = vim.fn.expand('~/.cache/nvim/backup/')
vim.opt.directory      = vim.fn.expand('~/.cache/nvim/backup/')
vim.opt.undofile       = true
vim.opt.undodir        = vim.fn.expand('~/.cache/nvim/undo/')
vim.opt.undolevels     = 1000
vim.opt.undoreload     = 10000
