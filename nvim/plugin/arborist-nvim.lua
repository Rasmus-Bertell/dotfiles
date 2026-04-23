vim.pack.add(
        { 'https://github.com/arborist-ts/arborist.nvim' },
        { confirm = false }
)

local opts = {}

require('arborist').setup(opts)
