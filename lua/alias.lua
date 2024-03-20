local func = require "func"
-- Custom alias

local mappings = {
    {
        before = "cl",
        after = 'iclassName=""<Esc>F"a'
    },

}

-- Function call for setting up mappings

for _, mapping in ipairs(mappings) do
    func.key_remapping("<leader><leader>" .. mapping.before, mapping.after)
end