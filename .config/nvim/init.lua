vim.g.mapleader = " "
vim.g.flash_winswitch = 1
vim.opt.showtabline = 2
vim.opt.mouse = "";

require('plugins');

vim.keymap.set("n", "<leader>bo", ":BufOnly<CR>", {})
vim.keymap.set("n", "<leader>e", ":windo edit<CR>", {})
vim.keymap.set("n", "gb", ":ls<CR>:b<Space>", {})

require('togglecc');

