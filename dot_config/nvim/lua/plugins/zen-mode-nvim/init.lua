local M = { 'folke/zen-mode.nvim' }

M.opts = {
        plugins = {
                options = { scrolloff = 999 },
                gitsigns = { enabled = true },
                tmux = { enabled = true },
        }
}

return M
