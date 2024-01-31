vim.api.nvim_create_user_command(
        "Autoformat",
        function(args)
                if args.args == "enable" then
                        vim.g.enable_autoformat = true
                end

                if args.args == "disable" then
                        vim.g.enable_autoformat = false
                end

                vim.g.enable_autoformat = not vim.g.enable_autoformat
        end,
        {
                nargs = '?',
                complete = function() return { "enable", "disable" } end,
                desc = "Toggle autoformat-on-save"
        }
)
