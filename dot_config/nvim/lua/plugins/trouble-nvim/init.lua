local M = { 'folke/trouble.nvim' }

M.dependencies = { 'nvim-tree/nvim-web-devicons' }

M.opts = {
        height = 5,
        win_config = { border = 'rounded' },
        padding = false,
        use_diagnostic_signs = true,
}

return M
