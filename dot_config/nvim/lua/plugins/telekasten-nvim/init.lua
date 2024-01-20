local M = { 'renerocksai/telekasten.nvim' }

M.cmd = 'Telekasten'

M.dependencies = { 'nvim-telescope/telescope.nvim' }

M.keys = {
        { '<leader>zn', function() require('telekasten').new_note() end },
        { '<leader>zf', function() require('telekasten').find_notes() end },
        { '<leader>zt', function() require('telekasten').show_tags() end },
}

M.opts = {
        home = vim.fn.expand('$XDG_DOCUMENTS_DIR/notes')
}

return M
