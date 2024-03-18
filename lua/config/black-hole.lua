-- Redirect 'd' and 'c' operations to the black hole register

local k = vim.keymap.set

k("n", "d", '"_d', {
    noremap = true
})
k("n", "dd", '"_dd', {
    noremap = true
})
k("n", "D", '"_D', {
    noremap = true
})
k("v", "d", '"_d', {
    noremap = true
})
k("v", "c", '"_c', { noremap = true })
k("n", "c", '"_c', { noremap = true })
k("n", "C", '"_C', {
    noremap = true
})
