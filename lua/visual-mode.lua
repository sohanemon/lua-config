local func = require "func"

-- Commands in Visual mode
local commands = { {
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


-- Remapping in Visual mode
local mappings = { {
    before = "p",
    after = "P"
}, }

-- Function call for setting up mappings
for _, mapping in ipairs(commands) do
    func.vscode_action(mapping.key, mapping.commands, 'v')
end

for _, mapping in ipairs(mappings) do
    func.key_remapping(mapping.before, mapping.after, 'v')
end
