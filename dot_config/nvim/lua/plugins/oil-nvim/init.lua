local M = { 'stevearc/oil.nvim' }

-- Always load the file explorer
-- TODO: Only load it if opening a directory or with keypress
M.lazy     = false
M.priority = 900

M.opts = {}

M.dependencies = { 'nvim-tree/nvim-web-devicons' }

M.keys = {
        { '-', function() require('oil').open() end }
}

return M
