vim.pack.add(
        { 'https://github.com/ibhagwan/fzf-lua' },
        { confirm = false }
)

---@module "fzf-lua"
---@type fzf-lua.Config|{}
---@diagnostic disable: missing-fields
local opts = {}
---@diagnostic enable: missing-fields

require('fzf-lua').setup(opts)
