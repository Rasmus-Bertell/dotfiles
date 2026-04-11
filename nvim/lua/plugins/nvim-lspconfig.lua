-- https://lazy.folke.io/spec
return {
        -- Source
        'neovim/nvim-lspconfig',

        -- Setup
        config = function()
                vim.lsp.enable({ 'lua_ls', 'intelephense' })
        end,

        -- Lazy Loading
        event = { 'VeryLazy' },
}
