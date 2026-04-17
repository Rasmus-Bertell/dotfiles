vim.pack.add(
        { 'https://github.com/ibhagwan/fzf-lua' },
        { confirm = false }
)

local opts = {}

require('fzf-lua').setup(opts)
