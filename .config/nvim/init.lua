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

vim.cmd [[ source /home/jonbri/dotfiles/.config/nvim/vimrc.vim ]]

vim.g.projectionist_heuristics = {
    ["*"] = {
    -- ["/home/jonbri/icecoldnugrape/*"] = {
        ["components/*"] = {
            type = "component"
        }
    }
}
