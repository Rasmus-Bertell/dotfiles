-- Autocommand to change textwidth for certain filetypes
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
        pattern = { '*.md', '*.txt' },
        callback = function()
                vim.opt.textwidth = 80
                vim.opt.colorcolumn = '0'
        end
})

vim.api.nvim_create_autocmd({ 'BufEnter', 'InsertLeave', 'BufWritePost' }, {
        callback = function()
                require('lint').try_lint()
        end,
})
