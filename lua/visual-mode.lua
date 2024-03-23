local func = require "func"

-- Commands in Visual mode
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
        key = "u",
        commands = { "cursorUndo" }
    },
    {
        key = "/",
        commands = { "editor.action.commentLine" }
    } }


-- Remapping in Visual mode
local mappings = {
    {
        before = "p",
        after = "pgvy"
    },
    {
        before = "x", after = "d"
    },
    {
        before = "s", after = '"_c'
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
        before="0",
        after="g0"
    },
    {
        before="$",
        after="g$"
    }
}


-- Function call for setting up mappings
for _, mapping in ipairs(commands) do
    func.vscode_action(mapping.key, mapping.commands, 'v')
end

for _, mapping in ipairs(mappings) do
    func.key_remapping(mapping.before, mapping.after, 'v')
end
