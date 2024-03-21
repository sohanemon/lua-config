local func = require "func"
-- leader key
vim.g.mapleader = " "

-- Leader key mappings for normal mode
local leader_normal_mappings = { {
    key = "e",
    commands = { "workbench.view.explorer" }
}, {
    key = "a",
    commands = { "workbench.action.toggleActivityBarVisibility" }
}, {
    key = "z",
    commands = { "workbench.action.toggleZenMode" }
},
    {
        key = "s",
        commands = {
            "workbench.action.findInFiles"
        }
    },
    {
        key = "g",
        commands = { "workbench.view.scm" }
    }, {
    key = "x",
    commands = { "workbench.view.extensions" }
}, {
    key = "t",
    commands = { "workbench.view.extension.todo-tree-container" }
}, {
    key = "q",
    commands = { "workbench.action.closeActiveEditor" }
}, {
    key = "Q",
    commands = { "workbench.action.closeEditorsInGroup" }
},
    {
        key = "n",
        commands = { "gitlens.diffWithPreviousInDiffLeft" }
    },
    {
        key = "N",
        commands = { "gitlens.diffWithNextInDiffLeft" }
    }, {
    key = "c",
    commands = { "gitlens.views.commits.focus" }
}
}



-- Function call for setting up mappings
for _, mapping in ipairs(leader_normal_mappings) do
    func.vscode_action("<leader>" .. mapping.key, mapping.commands)
end

for _, mapping in ipairs(leader_normal_mappings) do
    func.vscode_action("<leader>" .. mapping.key, mapping.commands, "x")
end
