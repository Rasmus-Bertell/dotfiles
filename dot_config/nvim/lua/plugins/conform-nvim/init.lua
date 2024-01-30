local M = { 'stevearc/conform.nvim' }

M.cmd = { "ConformInfo" }

M.event = { "BufWritePre" }

M.init = function()
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
end

M.opts = {
        -- TODO: Add formatters
        formatters_by_ft = {
                php = {
                        'phpcbf',
                        'php_cs_fixer',
                },
                ["*"] = {
                        'trim_newlines',
                        'trim_whitespace',
                },
        },
        format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true
        },
}

return M
