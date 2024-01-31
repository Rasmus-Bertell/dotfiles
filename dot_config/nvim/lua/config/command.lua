vim.api.nvim_create_user_command(
        "Autoformat",
        function(args)
                local str_starts = function(String, Start)
                        return string.sub(String, 1, string.len(Start)) == Start
                end

                if str_starts(args.args, "enable") then
                        vim.g.enable_autoformat = true

                        return
                end

                if str_starts(args.args, "disable") then
                        vim.g.enable_autoformat = false

                        return
                end

                vim.g.enable_autoformat = not vim.g.enable_autoformat
        end,
        {
                nargs = '?',
                complete = function() return { "enable", "disable" } end,
                desc = "Toggle autoformat-on-save"
        }
)
