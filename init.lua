-- Load vscode
local vim = vim
local vscode = require("vscode-neovim")
local Plug = vim.fn['plug#']

-- Plugins

vim.call('plug#begin')
Plug('justinmk/vim-sneak')
vim.call('plug#end')


-- <leader> key
vim.g.mapleader = " "

-- Leader key mappings for normal mode
local leader_normal_mappings = {{
    key = "<leader>e",
    commands = {"workbench.view.explorer"}
}, {
    key = "<leader>a",
    commands = {"workbench.action.toggleActivityBarVisibility"}
}, {
    key = "<leader>z",
    commands = {"workbench.action.toggleZenMode"}
}, {
    key = "<leader>g",
    commands = {"workbench.view.scm"}
}, {
    key = "<leader>x",
    commands = {"workbench.view.extensions"}
}, {
    key = "<leader>t",
    commands = {"workbench.view.extension.todo-tree-container"}
}, {
    key = "<leader>q",
    commands = {"workbench.action.closeActiveEditor"}
}, {
    key = "<leader>c",
    commands = {"gitlens.views.commits.focus"}
},{
    key = "<leader>Q",
    commands = {"workbench.action.closeAllEditors"}
}}

local normal_mode_commands = {{
    key = "L",
    commands = {"workbench.action.nextEditorInGroup"}
}, {
    key = "H",
    commands = {"workbench.action.previousEditorInGroup"}
}, {
    key = "gi",
    commands = {"editor.action.peekImplementation"}
}, {
    key = "gq",
    commands = {"editor.action.quickFix"}
}, {
    key = "gt",
    commands = {"editor.action.peekTypeDefinition"}
},{
    key= "z",
    commands = "editor.toggleFold"
}}


local visual_mode_commands = {{
    key = "n",
    commands = {"editor.action.addSelectionToNextFindMatch"}
}, {
    key = "N",
    commands = {"editor.action.addSelectionToPreviousFindMatch"}
}, {
    key = "L",
    commands = {"editor.action.selectHighlights"}
}, {
    key = "u",
    commands = {"cursorUndo"}
}}


-- Remapping in Normal mode
local normal_mode_remappings = {{
    before = "J",
    after = "<S-l>"
}, {
    before = "K",
    after = "<S-h>"
}, {
    before = "<CR>",
    after = "bea"
}, {
    before = "<BS>",
    after = "ciw"
}, {
    before = "b",
    after = "w"
}}

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

-- Functions definition start
local function vscode_action_func(nvim_key, vscode_commands, mode)
    mode = mode or "n"
    vim.api.nvim_set_keymap(mode, nvim_key, "", {
        noremap = true,
        silent = true,
        callback = function()
            if type(vscode_commands) == "string" then
                vscode_commands = {vscode_commands}
            end
            for _, command in ipairs(vscode_commands) do
                vscode.action(command)
            end
        end
    })
end

local function key_remapping_func(before_key, after_key, mode)
    mode = mode or "n"
    vim.keymap.set(mode, before_key, after_key, {silent = true, noremap = true})
end

-- Functions definition end

-- Function call start
for _, mapping in ipairs(leader_normal_mappings) do
    vscode_action_func(mapping.key, mapping.commands)
end

for _, mapping in ipairs(normal_mode_commands) do
    vscode_action_func(mapping.key, mapping.commands)
end

for _, mapping in ipairs(normal_mode_remappings) do
    key_remapping_func(mapping.before, mapping.after)
end
-- Function call end
