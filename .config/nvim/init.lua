local Plug = vim.fn['plug#'];
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'junegunn/seoul256.vim'
-- Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }
Plug 'junegunn/goyo.vim'
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
-- Plug 'tpope/vim-capslock'
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

vim.g.flash_winswitch=1

--[[
""""""""""""""""""""""""""""""""""""""""""
" allows gf to open up amd modules
set suffixesadd=.js
autocmd VimEnter * set expandtab
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
" venerable shortcuts
nnoremap gb :ls<CR>:b<Space>
nnoremap <leader>bo :BufOnly<CR>
nnoremap <leader>e :windo edit<CR>
set pastetoggle=<F3>

" switch windows without using ctrl-w
nnoremap gw <C-w>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" toggle colorcolumn
function! GetCC()
  let b:defaultCC = 80
  if &colorcolumn
    set colorcolumn=0
  else
    execute "set colorcolumn=".b:defaultCC
  endif
endfunction

nnoremap <leader>cc :call GetCC()<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" brace-jump
function! BraceJump()
  normal 0
  execute "normal! /\v[\[{]<cr>"
  normal 0$%$
  execute "normal! /\\v\\S\<cr>"
endfunction
" nnoremap g} :call BraceJump()<CR>
nnoremap <silent> <Plug>JonbriBraceJump :call BraceJump()<cr>
\:call repeat#set("\<Plug>JonbriBraceJump")<CR>
nmap g} <Plug>JonbriBraceJump
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" search matching
function! GotoFirstMatch()
  call inputsave()
  let userInput = input('')
  execute "keepjumps normal! gg/".userInput."/\<CR>"
endfunction
nnoremap <leader>/f :call GotoFirstMatch()<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" commit message prefix
function! OnBranch()
  :/^# On branch /yank
  :normal P
  :normal 3dw
  :normal I(
  :normal A)
  :startinsert!
endfunction
command! OnBranch call OnBranch()
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
function! RenderTab()
:normal iE--------------------
:normal oB--------------------
:normal oG--------------------
:normal oD--------------------
:normal oA--------------------
:normal oE--------------------
endfunction
command! Tab call RenderTab()

function! RenderBassTab()
:normal iG--------------------
:normal oD--------------------
:normal oA--------------------
:normal oE--------------------
endfunction
command! BTab call RenderBassTab()
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" invoke vimgrep with word under cursor
function! NormalStartVimGrep()
  let wordUnderCursor = expand("<cword>")
  call feedkeys(':vimgrep '.wordUnderCursor.' ')
endfunction
nnoremap <leader>grep :call NormalStartVimGrep()<cr>
" invoke vimgrep with visually selected text
function! VisualStartVimGrep()
  let selectedText = getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]
  call feedkeys(':vimgrep '.selectedText.' ')
endfunction
vnoremap <leader>grep :call VisualStartVimGrep()<cr>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" misc
set showtabline=2
set guioptions-=e

" set t_Co=256
set laststatus=2
silent! colorscheme ron

" go to last buffer
nnoremap <leader>bb :b#<cr>

" quick-fix window always spans windows at bottom
" https://stackoverflow.com/a/47077341/2295034
au FileType qf wincmd J

nnoremap <leader>g :Goyo<cr>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
function ExecuteFromBuffer()
  :exe @y
endfunction
function! Br() abort
  normal 0
  normal mp

  " capture remote in register r
  normal 0"ryi)
  " capture branch in register b
  normal 0f l"by$)

  normal 'p
  normal o

  " craft checkout statement
  normal I!git checkout 
  normal "bp
  normal a && git reset --hard
  normal a 
  normal "rp
  normal a/
  normal "bp

  normal "yyy
  normal "_dd
  normal 'p
  silent! call ExecuteFromBuffer()
  quit!
endfunction

nmap <silent> <leader>br :call Br()<cr>
""""""""""""""""""""""""""""""""""""""""""
--]]

