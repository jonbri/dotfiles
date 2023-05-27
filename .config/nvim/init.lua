require('togglecc');

local Plug = vim.fn['plug#'];
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vader.vim'
Plug 'folke/zen-mode.nvim'
Plug 'stevearc/oil.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-capslock'
Plug 'duff/vim-bufonly'
Plug 'jonbri/vim-configure'
Plug 'jonbri/vim-flash'
Plug 'jonbri/vim-lorum'
Plug 'jonbri/vim-sensible'
Plug 'jonbri/vim-amperage'
Plug 'jonbri/vim-copybuddy'
Plug 'jonbri/vim-win'
Plug 'jonbri/vim-spaced'
Plug 'jonbri/vim-yankee'
Plug 'jonbri/vim-zargs'
Plug 'jonbri/vim-dictionary'
Plug 'AndrewRadev/discotheque.vim'
Plug 'github/copilot.vim'
vim.call('plug#end');

require("oil").setup({
    columns = {},
    win_options = {
        number = false
    },
    view_options = {
        show_hidden = true
    },
    keymaps = {
        ["ge"] = "actions.open_cmdline"
    }
});
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })

vim.g.mapleader = " "
vim.opt.showtabline = 2
vim.g.flash_winswitch=1
vim.opt.mouse = "";

vim.keymap.set("n", "<leader>bo", ":BufOnly<CR>", {})
vim.keymap.set("n", "e", ":windo edit<CR>", {})
vim.keymap.set("n", "gb", ":ls<CR>:b<Space>", {})

vim.api.nvim_set_keymap(
  "n",
  "<leader>z",
  ":ZenMode<CR>",
  { noremap = true }
)

