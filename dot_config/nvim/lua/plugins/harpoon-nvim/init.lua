local M = { 'ThePrimeagen/harpoon' }

M.branch = 'harpoon2'

M.dependencies = { 'nvim-lua/plenary.nvim' }

M.keys = {
        { '<leader>ha', function() require('harpoon'):list():append() end },
        { '<leader>hl', function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end },

        { '<leader>hn', function() require('harpoon'):list():next() end },
        { '<leader>hp', function() require('harpoon'):list():prev() end },
}

return M
