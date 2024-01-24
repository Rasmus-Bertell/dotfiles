vim.keymap.set('n', '<leader>tt', function() require('trouble').toggle() end, { desc = 'Toggle trouble' })

vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })

vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
                local map = function(mode, key, cmd, desc)
                        vim.keymap.set(mode, key, cmd, { buffer = ev.buf, desc = desc })
                end

                map('n', '<leader>ld', vim.lsp.buf.definition, 'Go to definition')
                map('n', '<leader>lr', vim.lsp.buf.references, 'Go to references')
                map('n', '<leader>lh', vim.lsp.buf.hover, 'Show hover')
                map('n', '<leader>ls', vim.lsp.buf.signature_help, 'Show signature help')
                map('n', '<leader>lr', vim.lsp.buf.rename, 'Rename symbol')
                map({ 'n', 'v' }, '<leader>la', vim.lsp.buf.code_action, 'Code action')
        end,
})
