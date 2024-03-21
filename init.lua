-- imports

if vim.g.vscode then
    require('plugins')
    require('leader')
    require('normal-mode')
    require('visual-mode')
    require('alias')
    require('config.black-hole')
    require('config.movement')
    require('config.sneak')
    require('config.options')
    require('config.multi-cursor')
end
