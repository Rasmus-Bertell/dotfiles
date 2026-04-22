vim.pack.add(
        {
                {
                        src     = 'https://github.com/saghen/blink.cmp',
                        version = 'v1',
                },
        },
        {
                confirm = false,
        }
)

local opts = {
        completion = {
                documentation = {
                        auto_show = true
                },
        },
}

require('blink.cmp').setup(opts)
