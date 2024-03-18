-- Redirect 'd' and 'c' operations to the black hole register
vim.api.nvim_set_keymap("n", "d", '"_d', {
    noremap = true
})
vim.api.nvim_set_keymap("n", "D", '"_D', {
    noremap = true
})
vim.api.nvim_set_keymap("v", "d", '"_d', {
    noremap = true
})
vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true })
vim.api.nvim_set_keymap("n", "C", '"_C', {
    noremap = true
})
