-- Autocommand to change textwidth for certain filetypes
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
        pattern = { '*.md', '*.txt' },
        command = 'setlocal textwidth=80'
})
