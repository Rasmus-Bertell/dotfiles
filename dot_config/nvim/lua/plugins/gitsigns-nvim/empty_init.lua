local M = { 'lewis6991/gitsigns.nvim' }

M.opts = {
        signcolumn         = true,
        current_line_blame = true,

        on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                end

                map('n', ']c', function()
                        if vim.wo.diff then return ']c' end
                        vim.schedule(function() gs.next_hunk() end)
                        return '<Ignore>'
                end, {expr=true})

                map('n', '[c', function()
                        if vim.wo.diff then return '[c' end
                        vim.schedule(function() gs.prev_hunk() end)
                        return '<Ignore>'
                end, {expr=true})

                map('n', '<leader>sh', gs.stage_hunk)
                map('n', '<leader>rh', gs.reset_hunk)

                map('v', '<leader>sh', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
                map('v', '<leader>rh', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)

                map('n', '<leader>uh', gs.undo_stage_hunk)
                map('n', '<leader>ph', gs.preview_hunk)

                map('n', '<leader>sb', gs.stage_buffer)
                map('n', '<leader>rb', gs.reset_buffer)

                map('n', '<leader>hb', function() gs.blame_line{full=true} end)
                map('n', '<leader>tb', gs.toggle_current_line_blame)
                map('n', '<leader>dh', gs.diffthis)
                map('n', '<leader>Dh', function() gs.diffthis('~') end)
        end
}

return M
