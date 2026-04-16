vim.g.mapleader      = ' '
vim.g.maplocalleader = '\\'

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format file' })
vim.keymap.set('n', '-', vim.cmd.Ex, { desc = 'Open parent directory' })
