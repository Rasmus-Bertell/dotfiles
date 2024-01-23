local M = { 'hrsh7th/nvim-cmp' }

M.dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',

        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',

        'petertriho/cmp-git',
}

M.config = function()
        local cmp = require('cmp')

        ---@diagnostic disable-next-line: redundant-parameter
        cmp.setup({
                snippet = {
                        expand = function(args)
                                vim.fn["vsnip#anonymous"](args.body)
                        end,
                },
                window = {
                        completion = cmp.config.window.bordered(),
                        documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                        ['<C-f>'] = cmp.mapping.scroll_docs(4),
                        ['<C-Space>'] = cmp.mapping.complete(),
                        ['<C-e>'] = cmp.mapping.abort(),
                        ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                        { name = 'nvim_lsp' },
                        { name = 'vsnip' },
                }, {
                        { name = 'buffer' },
                })
        })

        ---@diagnostic disable-next-line: undefined-field
        cmp.setup.filetype('gitcommit', {
                sources = cmp.config.sources({
                        { name = 'git' },
                }, {
                        { name = 'buffer' },
                })
        })

        ---@diagnostic disable-next-line: undefined-field
        cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                        { name = 'buffer' }
                }
        })

        ---@diagnostic disable-next-line: undefined-field
        cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                        { name = 'path' }
                }, {
                        { name = 'cmdline' }
                })
        })
end

return M
