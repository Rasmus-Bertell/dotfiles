vim.pack.add(
        { 'https://github.com/romus204/tree-sitter-manager.nvim' },
        { confirm = false }
)

local opts = {
        auto_install = true,
}

require('tree-sitter-manager').setup(opts)
