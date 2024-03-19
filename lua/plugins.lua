local plugins = {
    {
        "justinmk/vim-sneak",
        event = 'VeryLazy',
        cond = not not vim.g.vscode,
    },
    {
        "wellle/targets.vim",
        event = 'VeryLazy',
        cond = not not vim.g.vscode,
    },
    {
        "tpope/vim-repeat",
        event = 'VeryLazy',
        cond = not not vim.g.vscode,
    },
    {
        "tpope/vim-surround",
        event = 'VeryLazy',
        cond = not not vim.g.vscode,
    },
    {
        'vscode-neovim/vscode-multi-cursor.nvim',
        event = 'VeryLazy',
        cond = not not vim.g.vscode,
        opts = {},
    }
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins)
