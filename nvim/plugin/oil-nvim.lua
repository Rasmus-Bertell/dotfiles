vim.pack.add({ 'https://github.com/stevearc/oil.nvim' })

require('oil').setup({
        columns = { 'size', 'permissions' }
})

vim.keymap.set(
        'n',
        '-',
        require('oil').open,
        { desc = 'Open parent directory' }
)
