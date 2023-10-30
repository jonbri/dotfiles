if not vim.g.vscode then
    local Plug = vim.fn['plug#'];
    vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'junegunn/seoul256.vim'
    Plug 'junegunn/vader.vim'
    Plug 'pocco81/true-zen.nvim'
    -- Plug 'stevearc/oil.nvim'
    Plug 'tpope/vim-projectionist'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-flagship'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-scriptease'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-speeddating'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-dispatch'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-capslock'
    Plug 'tpope/vim-vinegar'
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
    -- Plug 'github/copilot.vim'
    Plug 'numToStr/Comment.nvim'
    vim.call('plug#end');

    -- require("oil").setup({
    --    columns = {},
    --    win_options = {
    --        number = false
    --    },
    --    view_options = {
    --        show_hidden = true
    --    },
    --    keymaps = {
    --        ["ge"] = "actions.open_cmdline"
    --    }
    --});
    --vim.keymap.set(
    --  "n",
    --  "-",
    --  require("oil").open,
    --  { desc = "Open parent directory" }
    -- )

    vim.keymap.set(
      "n",
      "<leader>z",
      ":TZAtaraxis<CR>",
      {}
    )

    -- require("oil").setup({
    --    columns = {},
    --    win_options = {
    --        number = false
    --    },
    --    view_options = {
    --        show_hidden = true
    --    },
    --    keymaps = {
    --        ["ge"] = "actions.open_cmdline"
    --    }
    --});
    --vim.keymap.set(
    --  "n",
    --  "-",
    --  require("oil").open,
    --  { desc = "Open parent directory" }
    --)

    vim.keymap.set(
      "n",
      "<leader>z",
      ":TZAtaraxis<CR>",
      {}
    )
else
    local Plug = vim.fn['plug#'];
    vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-abolish'
    -- Plug 'tpope/vim-capslock'
    -- Plug 'duff/vim-bufonly'
    Plug 'jonbri/vim-flash'
    Plug 'jonbri/vim-lorum'
    Plug 'jonbri/vim-amperage'
    -- Plug 'jonbri/vim-win'
    -- Plug 'jonbri/vim-spaced'
    -- Plug 'jonbri/vim-yankee'
    Plug 'jonbri/vim-zargs'
    -- Plug 'jonbri/vim-dictionary'
    Plug 'AndrewRadev/discotheque.vim'
    Plug 'numToStr/Comment.nvim'
    vim.call('plug#end');
end

require("Comment").setup();

