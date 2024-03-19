local k = vim.keymap.set

k('n', 'k', function()
    return vim.v.count == 0 and 'gk' or 'k'
end, { expr = true, remap = true })

k('n', 'j', function()
    return vim.v.count == 0 and 'gj' or 'j'
end, { expr = true, remap = true })

k("n", "0", "g0", { remap = true, silent = true })
k("n", "$", "g$", { remap = true, silent = true })
