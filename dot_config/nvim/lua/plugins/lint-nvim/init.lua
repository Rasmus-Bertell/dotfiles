local M = { 'mfussenegger/nvim-lint' }

M.config = function()
        local lint = require('lint')

        lint.linters_by_ft = {
                php = {
                        'php',
                        'phpcs',
                        'phpmd',
                        'phpstan',
                },
        }
end

return M
