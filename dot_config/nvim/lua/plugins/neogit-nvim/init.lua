local M = { 'NeogitOrg/neogit' }

M.dependencies = {
        'nvim-lua/plenary.nvim',
        'sindrets/diffview.nvim',
        'nvim-telescope/telescope.nvim',
}

M.opts = {
        disable_insert_on_commit = true
}

return M
