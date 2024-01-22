local M = { 'ThePrimeagen/harpoon' }

M.branch = 'harpoon2'

M.config = function(_, opts)
        local harpoon = require("harpoon")

        harpoon:setup(opts)

        vim.keymap.set('n', '<leader>ha', function() require('harpoon'):list():append() end)
        vim.keymap.set('n', '<leader>hl', function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end)
end

M.dependencies = { 'nvim-lua/plenary.nvim' }

return M
