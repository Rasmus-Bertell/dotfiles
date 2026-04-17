vim.pack.add(
        {
                {
                        src  = 'https://github.com/rose-pine/neovim',
                        name = 'rose-pine',
                },
        },
        { confirm = false }
)

local opts = {
        styles = {
                transparent = true,
        },
}

require('rose-pine').setup(opts)
vim.cmd.colorscheme('rose-pine')
