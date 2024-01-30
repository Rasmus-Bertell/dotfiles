local M = { 'mfussenegger/nvim-lint' }

M.config = function()
        local lint = require('lint')

        local phpcs = require('lint').linters.phpcs
        local phpmd = require('lint').linters.phpmd

        phpcs.cmd = "vendor/bin/phpcs"
        phpmd.cmd = "vendor/bin/phpmd"

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
