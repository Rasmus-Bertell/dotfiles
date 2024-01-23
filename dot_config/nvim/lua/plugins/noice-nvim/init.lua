local M = { 'folke/noice.nvim' }

M.dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
}

M.event = 'VeryLazy'

M.opts = {
        lsp = {
                override = {
                        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                        ['vim.lsp.util.stylize_markdown'] = true,
                },
        },
        presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
                lsp_doc_border = true,
        },
        routes = {
                {
                        view = 'notify',
                        filter = { event = 'msg_showmode' },
                },
        },
}

return M
