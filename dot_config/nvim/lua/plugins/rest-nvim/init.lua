local M = { 'rest-nvim/rest.nvim' }

M.dependencies = { 'nvim-lua/plenary.nvim' }

M.lazy = false

M.opts = {
        result = {
                show_statistics = {
                        { 'time_total',    title = 'Total time: ' },
                        { 'size_download', title = 'Download size: ' },
                }
        }
}

M.keys = {
        { '<leader>rq', function() require('rest-nvim').run() end },
}

return M
