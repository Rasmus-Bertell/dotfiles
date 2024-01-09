local M = { 'folke/tokyonight.nvim' }

-- Always load the colorscheme
M.lazy     = false
M.priority = 1000

M.config = function()
        require('tokyonight').setup({ style = 'night' })

        vim.cmd.colorscheme('tokyonight')
end

return M
