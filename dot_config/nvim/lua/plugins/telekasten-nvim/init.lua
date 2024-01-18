local M = { 'renerocksai/telekasten.nvim' }

M.dependencies = { 'nvim-telescope/telescope.nvim' }

M.opts = {
        home = vim.fn.expand('$XDG_DOCUMENTS_DIR/notes')
}

return M
