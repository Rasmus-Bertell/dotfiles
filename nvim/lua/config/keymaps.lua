vim.g.mapleader      = ' '
vim.g.maplocalleader = '\\'

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '-', function() require('oil').open() end, { desc = 'Open parent directory' })
