local func = {}

function func.vscode_action(nvim_key, vscode_commands, mode)
    mode = mode or "n"
    if vim.g.vscode then
        -- VSCode extension
        vim.api.nvim_set_keymap(mode, nvim_key, "", {
            noremap = true,
            silent = true,
            callback = function()
                if type(vscode_commands) == "string" then
                    vscode_commands = { vscode_commands }
                end
                for _, command in ipairs(vscode_commands) do
                    require("vscode-neovim").action(command)
                end
            end
        })
    else
        -- ordinary Neovim
    end
end

function func.key_remapping(before_key, after_key, mode)
    mode = mode or "n"
    vim.keymap.set(mode, before_key, after_key, { silent = true, noremap = true })
end

return func
