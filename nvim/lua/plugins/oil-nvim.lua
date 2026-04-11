-- https://lazy.folke.io/spec
return {
        -- Source
        'stevearc/oil.nvim',

        -- Loading
        dependencies = { 'nvim-tree/nvim-web-devicons' },

        -- Setup
        opts = {
                columns      = { 'icon', 'permission', 'size' },
                view_options = {
                        show_hidden      = true,
                        is_always_hidden = function(name, _)
                                return name:match('^%.+$') ~= nil
                        end,
                },
        },

        --Lazy Loading
        event = { 'VimEnter' },
        keys  = {
                { '-', function() require('oil').open() end, desc = 'Open parent directory' },
        },
}
