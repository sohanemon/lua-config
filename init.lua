-- imports

if vim.g.vscode then
    -- VSCode extension
    require('plugins')
    require('leader')
    require('normal-mode')
    require('visual-mode')
    require('alias')
    require('config.black-hole')
    require('config.movement')
    require('config.sneak')
    require('config.custom')
    require('config.multi-cursor')
else
    -- ordinary Neovim
end
