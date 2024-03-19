local func = require "func"

-- Commands in Normal mode
local commands = {
    {
        key = "L",
        commands = { "workbench.action.nextEditorInGroup" }
    },
    {
        key = "H",
        commands = { "workbench.action.previousEditorInGroup" }
    },
    {
        key = "gi",
        commands = { "editor.action.peekImplementation" }
    },
    {
        key = "gq",
        commands = { "editor.action.quickFix" }
    },
    {
        key = "gt",
        commands = { "editor.action.peekTypeDefinition" }
    },
    {
        key = "z",
        commands = "editor.toggleFold"
    }
}


-- Remapping in Normal mode
local mappings = {
    {
        before = "x",
        after = "d"
    },
    {
        before = "xx",
        after = "dd"
    },
    {
        before = "J",
        after = "<S-l>"
    },
    {
        before = "K",
        after = "<S-h>"
    },
    {
        before = "<CR>",
        after = "bea"
    },
    {
        before = "<BS>",
        after = '"_ciw'
    },
    {
        before = "r",
        after = "<C-r>"
    },
    {
        before = "<Esc>",
        after = ":nohlsearch<cr>"
    }
}

-- Function call for setting up mappings
for _, mapping in ipairs(commands) do
    func.vscode_action(mapping.key, mapping.commands)
end

for _, mapping in ipairs(mappings) do
    func.key_remapping(mapping.before, mapping.after)
end
