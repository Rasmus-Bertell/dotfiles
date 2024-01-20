local M = { 'stevearc/oil.nvim' }

M.dependencies = { 'nvim-tree/nvim-web-devicons' }

M.keys = {
        { '-', function() require('oil').open() end }
}

M.lazy = false

M.opts = {}

M.priority = 900

return M
