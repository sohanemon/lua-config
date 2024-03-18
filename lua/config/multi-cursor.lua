require('vscode-multi-cursor').setup { -- Config is optional
    -- Whether to set default mappings
    default_mappings = true,
    -- If set to true, only multiple cursors will be created without multiple selections
    no_selection = false,

}
local api = vim.api
local c = require('vscode-multi-cursor')

local k = vim.keymap.set
k({ 'n', 'x' }, 'mulc', c.create_cursor, { expr = true, desc = 'Create cursor' })
k('n', 'mw', 'mulciw*<Cmd>nohl<CR>', { remap = true })
k('n', 'mW', 'mulciw#<Cmd>nohl<CR>', { remap = true })
k({ 'n' }, 'mc', c.cancel, { desc = 'Cancel/Clear all cursors' })
k({ 'n' }, 'mn', c.next_cursor, { desc = 'Goto next cursor' })
k({ 'n' }, 'mN', c.prev_cursor, { desc = 'Goto prev cursor' })
k({ 'x' }, 'L', c.selectHighlights, { desc = 'Select all match' })
k({ 'n', 'x' }, 'I', c.start_left, { desc = 'Start cursors on the left' })
k({ 'n', 'x' }, 'A', c.start_right, { desc = 'Start cursors on the right' })
