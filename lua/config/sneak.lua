-- ignore case
vim.cmd [[let g:sneak#use_ic_scs = 1]]

-- Sneak remap
local k = vim.keymap.set


k("n", "s", "cl", { noremap = true })
k("n", "S", "dl", { noremap = true })
k("n", "/", "<Plug>Sneak_s", { noremap = true })
k("n", "?", "<Plug>Sneak_S", { noremap = true })
k("n", "f", "<Plug>Sneak_f", { noremap = true })
k("n", "F", "<Plug>Sneak_F", { noremap = true })
k("n", "t", "<Plug>Sneak_t", { noremap = true })
k("n", "T", "<Plug>Sneak_T", { noremap = true })
