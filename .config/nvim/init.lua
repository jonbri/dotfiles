vim.g.mapleader = " "
vim.g.flash_winswitch = 1
vim.opt.showtabline = 2

if not vim.g.vscode then
    vim.opt.mouse = "";
end

require('plugins');

if not vim.g.vscode then
    vim.keymap.set("n", "<leader>bo", ":BufOnly<CR>", {})
    vim.keymap.set("n", "<leader>e", ":windo edit<CR>", {})
    vim.keymap.set("n", "gb", ":ls<CR>:b<Space>", {})
end

if not vim.g.vscode then
    require('togglecc');
end

