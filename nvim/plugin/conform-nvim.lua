vim.pack.add({ 'https://github.com/stevearc/conform.nvim' })

local opts = {
        formatters_by_ft = {
                markdown = { 'prettier' },
        },
        format_on_save = {
                lsp_format = "fallback",
                timeout_ms = 5000,
        },
}

require('conform').setup(opts)
require('conform').formatters.prettier = {
        prepend_args = { '--prose-wrap', 'always' },
}
