local M = { 'folke/tokyonight.nvim' }

M.config = function(_, opts)
        require('tokyonight').setup(opts)

        vim.cmd.colorscheme('tokyonight')
end

M.opts = { style = 'night' }

return M
