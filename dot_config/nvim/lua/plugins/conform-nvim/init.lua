local M = { 'stevearc/conform.nvim' }

M.cmd = { "ConformInfo" }

M.event = { "BufWritePre" }

M.init = function()
        vim.g.enable_autoformat = true
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
                        'typos',
                        'trim_newlines',
                        'trim_whitespace',
                },
        },
        format_on_save = function()
                if not vim.g.enable_autoformat then
                        return
                end

                return { timeout_ms = 500, lsp_fallback = true }
        end,
}

return M
