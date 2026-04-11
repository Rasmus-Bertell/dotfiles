-- https://lazy.folke.io/spec
return {
        -- Source
        'folke/tokyonight.nvim',

        -- Loading
        priority = 1000,

        -- Setup
        init = function() vim.cmd.colorscheme('tokyonight') end,
        opts = { transparent = true },

        -- Lazy Loading
        lazy = false
}
