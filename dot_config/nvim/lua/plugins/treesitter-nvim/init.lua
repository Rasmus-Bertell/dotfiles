local M = { 'nvim-treesitter/nvim-treesitter' }

M.build = ':TSUpdate'

M.event = { 'VeryLazy' }

M.main = 'nvim-treesitter.configs'

M.opts = {
        ensure_installed = {
                'vim', 'regex', 'lua', 'bash', 'markdown', 'markdown_inline',
                'php', 'html', 'css'
        },
        highlight = { enable = true },
        incremental_selection = {
                enable = true,
                keymaps = {
                        init_selection = 'gnn',
                        node_incremental = 'grn',
                        scope_incremental = 'grc',
                        node_decremental = 'grm',
                },
        },
        indent = { enable = true },
}

return M
