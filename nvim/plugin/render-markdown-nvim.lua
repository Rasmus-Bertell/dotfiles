vim.pack.add({
        'https://github.com/nvim-mini/mini.icons',
        'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})

local opts = {
        render_modes = { 'n', 'c', 't' },
        anti_conceal = { enabled = false },
        win_options  = { concealcursor = { rendered = 'n' } },
        completions  = { lsp = { enabled = true } },
}

require('mini.icons').setup()
require('render-markdown').setup(opts)
