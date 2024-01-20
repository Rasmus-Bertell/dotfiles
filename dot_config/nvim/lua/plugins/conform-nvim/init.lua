local M = { 'stevearc/conform.nvim' }

M.cmd = { "ConformInfo" }

M.event = { "BufWritePre" }

M.init = function()
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
end

M.opts = {
        formatters_by_ft = {},
        format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true
        },
}

return M
