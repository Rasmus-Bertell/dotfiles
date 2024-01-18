local M = { 'renerocksai/telekasten.nvim' }

M.dependencies = { 'nvim-telescope/telescope.nvim' }

M.opts = {
        home = vim.fn.expand('$XDG_DOCUMENTS_DIR/notes')
}

M.keys = {
        { '<leader>zn', function() require('telekasten').new_note() end },
        { '<leader>zf', function() require('telekasten').find_notes() end },
        { '<leader>zt', function() require('telekasten').show_tags() end },
}

return M
