vim.o.number         = true
vim.o.relativenumber = true

vim.o.shiftwidth  = 8
vim.o.tabstop     = 8
vim.o.softtabstop = 8
vim.o.expandtab   = true

vim.o.smarttab    = true
vim.o.smartindent = true
vim.o.smartcase   = true
vim.o.ignorecase  = true

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.textwidth   = 80 + 40
vim.o.colorcolumn = '-0,-20,-40'
vim.o.wrap        = false

vim.o.signcolumn = 'yes:2'
vim.o.laststatus = 3

vim.o.scrolloff     =  5
vim.o.sidescrolloff = 15

vim.opt.completeopt:append('noselect')
vim.opt.clipboard:append('unnamedplus')

vim.o.updatetime = 50
vim.o.winborder  = 'rounded'

vim.opt.diffopt:append('algorithm:patience')
vim.opt.diffopt:append('indent-heuristic')

vim.o.list      = true
vim.o.listchars = 'leadmultispace: ,multispace:.,trail:.,tab:<->,extends:>,precedes:<,nbsp:_'
