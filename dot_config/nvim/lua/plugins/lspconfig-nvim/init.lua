local M = { 'neovim/nvim-lspconfig' }

M.dependencies = {
        'hrsh7th/nvim-cmp',
}

M.servers = {
        lua_ls = {
                on_init = function(client)
                        local path = client.workspace_folders[1].name
                        if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                                client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
                                        Lua = {
                                                runtime = {
                                                        version = 'LuaJIT'
                                                },
                                                workspace = {
                                                        checkThirdParty = false,
                                                        library = vim.api.nvim_get_runtime_file("", true)
                                                }
                                        }
                                })

                                client.notify("workspace/didChangeConfiguration",
                                        { settings = client.config.settings })
                        end
                        return true
                end

        },
        -- phpactor = {},
        intelephense = {},
}

-- TODO: Configure this later
M.config = function(_, opts)
        local lspconfig = require('lspconfig')

        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        opts = vim.tbl_deep_extend('force', opts, { capabilities = capabilities })

        for server, config in pairs(M.servers) do
                lspconfig[server].setup(vim.tbl_deep_extend("force", opts, config))
        end
end

return M
