local M = { 'folke/which-key.nvim' }

M.event = 'VeryLazy'

M.init = function()
        vim.opt.timeout = true
        vim.opt.timeoutlen = 300

        local wk = require('which-key')

        wk.register({
                ['<leader>g'] = { name = '+Git' },
                ['<leader>h'] = { name = '+Harpoon' },
                ['<leader>l'] = { name = '+LSP' },
                ['<leader>r'] = { name = '+Request' },
                ['<leader>t'] = { name = '+Trouble' },
                ['<leader>z'] = { name = '+Zettelkasten' },
        })
end

M.opts = {}

M.version = '1.4.0'

return M
