-- imports
require('leader')
require('normal-mode')
require('plugins')




local visual_mode_commands = { {
    key = "n",
    commands = { "editor.action.addSelectionToNextFindMatch" }
}, {
    key = "N",
    commands = { "editor.action.addSelectionToPreviousFindMatch" }
}, {
    key = "L",
    commands = { "editor.action.selectHighlights" }
}, {
    key = "u",
    commands = { "cursorUndo" }
} }



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

-- Sneak remap
vim.keymap.set("n", "s", "cl", { noremap = true })
vim.keymap.set("n", "S", "dl", { noremap = true })
vim.keymap.set("n", "f", "<Plug>Sneak_f", { noremap = true })
vim.keymap.set("n", "F", "<Plug>Sneak_F", { noremap = true })
vim.keymap.set("n", "t", "<Plug>Sneak_t", { noremap = true })
vim.keymap.set("n", "T", "<Plug>Sneak_T", { noremap = true })

-- open config
vim.cmd("nmap <leader>nvim :e ~/.config/nvim/init.lua<cr>")

-- save
vim.cmd("nmap <leader>s :w<cr>")

-- paste without overwriting
vim.keymap.set("v", "p", "P")

-- redo
vim.keymap.set("n", "r", "<C-r>")

-- sync system clipboard
-- xclip must be installed `apt install xclip`
vim.opt.clipboard = "unnamedplus"

-- clear search highlighting
vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true
