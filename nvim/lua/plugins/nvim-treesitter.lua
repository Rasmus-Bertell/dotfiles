-- https://lazy.folke.io/spec
return {
        -- Source
        'nvim-treesitter/nvim-treesitter',
        branch = 'main',

        -- Setup
        build  = function() require('nvim-treesitter.install').update() end,
        config = function()
                vim.api.nvim_create_autocmd('FileType', {
                        callback = function(args)
                                local treesitter = require('nvim-treesitter')
                                local lang       = vim.treesitter.language.get_lang(args.match)

                                local is_available = vim.list_contains(treesitter.get_available(), lang)
                                local is_installed = vim.list_contains(treesitter.get_installed(), lang)

                                if is_available then
                                        if not is_installed then
                                                treesitter.install(lang):wait()
                                        end

                                        vim.treesitter.start(args.buf, lang)

                                        vim.o.foldlevel      = 2
                                        vim.o.foldlevelstart = 2

                                        vim.o.foldmethod = 'expr'
                                        vim.o.foldexpr   = 'v:lua.vim.treesitter.foldexpr()'
                                        vim.o.foldtext   = ''

                                        vim.o.indentexpr = 'v:lua.require("nvim-treesitter").indentexpr()'
                                end
                        end,
                })
        end,
}
