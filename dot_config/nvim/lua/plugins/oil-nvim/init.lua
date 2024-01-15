local M = { 'stevearc/oil.nvim' }

-- Always load the file explorer
M.lazy     = false
M.priority = 900

M.dependencies = { 'nvim-tree/nvim-web-devicons' }

M.keys = {
        { '-', function() require('oil').open() end }
}

return M
