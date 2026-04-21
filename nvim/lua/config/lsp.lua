vim.lsp.config('phpantom', {
        cmd          = { 'phpantom_lsp' },
        filetypes    = { 'php' },
        root_markers = { '.phpantom.toml', 'composer.json', '.git' },
})

vim.lsp.config('intelephense', {
        cmd          = { 'intelephense', '--stdio' },
        filetypes    = { 'php' },
        root_markers = { 'composer.json', '.git' },
        init_options = {
                globalStoragePath = vim.fn.stdpath('state') .. '/lsp/intelephense',
                -- licenceKey        = vim.fn.stdpath('state') .. '/lsp/intelephense/licence.key',
        },
        settings     = {
                intelephense = {
                        telemetry = {
                                enabled = false,
                        },
                },
        },
})

vim.lsp.enable('intelephense')
