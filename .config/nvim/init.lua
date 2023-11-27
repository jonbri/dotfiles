vim.g.mapleader = " "
vim.g.flash_winswitch = 0
vim.opt.showtabline = 2

if not vim.g.vscode then
    vim.opt.mouse = "";
    vim.g.flash_winswitch = 1
end

require('plugins');

if not vim.g.vscode then
    vim.keymap.set("n", "<leader>bo", ":BufOnly<CR>", {})
    vim.keymap.set("n", "<leader>e", ":windo edit<CR>", {})
    vim.keymap.set("n", "gb", ":ls<CR>:b<Space>", {})
    require('togglecc');
end

-- TODO: not working
if vim.g.vscode then
    vim.keymap.set("n", "<C-e>", ":call ScrollDownOnce()<CR>", {})
    vim.keymap.set("n", "<C-y>", ":call ScrollUpOnce()<CR>", {})
end

vim.cmd [[ source /home/jonbri/dotfiles/.config/nvim/vimrc.vim ]]

