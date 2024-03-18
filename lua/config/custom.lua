vim.cmd("nmap <leader>nvim :e ~/.config/nvim/init.lua<cr>")

-- save
vim.cmd("nmap <leader>s :w<cr>")

-- sync system clipboard
-- xclip must be installed `apt install xclip`
vim.opt.clipboard = "unnamedplus"

-- clear search highlighting
vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true
