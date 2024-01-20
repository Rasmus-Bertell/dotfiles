local M = { 'nvim-telescope/telescope.nvim' }

M.tag = '0.1.5'

M.dependencies = { 
        {
                'nvim-lua/plenary.nvim',
                lazy = true,
        },
}

M.lazy = true

return M
