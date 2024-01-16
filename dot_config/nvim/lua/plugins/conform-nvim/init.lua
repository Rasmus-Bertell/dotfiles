local M = { 'stevearc/conform.nvim' }

M.event = { "BufWritePre" }

M.cmd = { "ConformInfo" }

M.opts = {
        formatters_by_ft = {},
        format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true
        },
}

M.init = function()
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
end

return M
