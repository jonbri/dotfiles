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
end

if not vim.g.vscode then
    require('togglecc');
end

-- TODO: should this belong in vim-bpm
vim.keymap.set("n", "<C-Right>", "zl", {})
vim.keymap.set("n", "<C-Left>", "zh", {})
vim.keymap.set("n", "<C-Up>", "<C-y>", {})
vim.keymap.set("n", "<C-Down>", "<C-e>", {})

vim.cmd [[ source /home/jonbri/dotfiles/.config/nvim/vimrc.vim ]]

