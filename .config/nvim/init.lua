vim.g.mapleader = " "
vim.g.flash_winswitch = 0
vim.opt.showtabline = 2

if not vim.g.vscode then -- in terminal
  vim.opt.mouse = "";
  vim.g.flash_winswitch = 1

  -- get machine "name"
  local handle = io.popen("name")
  local name = handle:read("*a")
  handle:close()

  local Plug = vim.fn['plug#'];
  vim.call('plug#begin', '~/.config/nvim/plugged')
  Plug 'junegunn/seoul256.vim'
  Plug 'junegunn/vader.vim'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-flagship'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-scriptease'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'monaqa/dial.nvim'
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
  Plug 'jonbri/vim-bpm'
  Plug 'jonbri/vim-sanity'
  Plug 'numToStr/Comment.nvim'
  if name == "t14\n" then Plug 'github/copilot.vim' end
  vim.call('plug#end');

  vim.keymap.set("n", "<leader>bo", ":BufOnly<CR>", {})
  vim.keymap.set("n", "<leader>e", ":windo edit<CR>", {})
  vim.keymap.set("n", "gb", ":ls<CR>:b<Space>", {})

  local function GetCC()
    local defaultCC = "80"
    if vim.o.colorcolumn == defaultCC then
      vim.opt.colorcolumn = "0"
    else
      vim.opt.colorcolumn = defaultCC
    end
  end
  vim.keymap.set( "n", "<leader>cc", GetCC, {})

else -- in vscode
    local Plug = vim.fn['plug#'];
    vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-abolish'
    Plug 'jonbri/vim-flash'
    Plug 'jonbri/vim-lorum'
    Plug 'jonbri/vim-amperage'
    Plug 'jonbri/vim-spaced'
    Plug 'jonbri/vim-yankee'
    Plug 'jonbri/vim-zargs'
    Plug 'AndrewRadev/discotheque.vim'
    Plug 'numToStr/Comment.nvim'
    Plug 'jonbri/vim-bpm'
    Plug 'jonbri/vim-sanity'
    vim.call('plug#end');
end

require("Comment").setup();

vim.cmd [[ source /home/jonbri/dotfiles/.config/nvim/vimrc.vim ]]

