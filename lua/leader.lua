local func = require "func"
-- <leader> key
vim.g.mapleader = " "

-- Leader key mappings for normal mode
local leader_normal_mappings = { {
    key = "<leader>e",
    commands = { "workbench.view.explorer" }
}, {
    key = "<leader>a",
    commands = { "workbench.action.toggleActivityBarVisibility" }
}, {
    key = "<leader>z",
    commands = { "workbench.action.toggleZenMode" }
}, {
    key = "<leader>g",
    commands = { "workbench.view.scm" }
}, {
    key = "<leader>x",
    commands = { "workbench.view.extensions" }
}, {
    key = "<leader>t",
    commands = { "workbench.view.extension.todo-tree-container" }
}, {
    key = "<leader>q",
    commands = { "workbench.action.closeActiveEditor" }
}, {
    key = "<leader>c",
    commands = { "gitlens.views.commits.focus" }
}, {
    key = "<leader>Q",
    commands = { "workbench.action.closeAllEditors" }
} }



-- Function call for setting up mappings
for _, mapping in ipairs(leader_normal_mappings) do
    func.vscode_action(mapping.key, mapping.commands)
end
