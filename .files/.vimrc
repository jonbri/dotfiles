let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""
" fix mingw32 runtimepath issue
if filereadable($HOME."/_vimrc")
  let &runtimepath.=','.$HOME."/vimfiles"
endif
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" allows gf to open up amd modules
set suffixesadd=.js
autocmd VimEnter * set expandtab
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" pathogen
if !empty(findfile('autoload/pathogen.vim', &rtp))
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
  :Helptags
endif
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
" put semi-colon at end of line
nnoremap <leader>pe; mp:normal A;<esc>`p
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
" delete everything but current line
function! DeleteOthers()
  :0,.-1g/.*/d
  :.+1,$g/.*/d
endfunction
nnoremap <leader>do :call DeleteOthers()<cr><cr>
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
" vim-prettier
" see end of ~/.vim/vim-prettier/plugin/prettier.vim
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" misc
set showtabline=2
set guioptions-=e

" set t_Co=256
set laststatus=2
silent! colorscheme transparent

" commonly used deployment script
nnoremap <leader>dep :!./deploy<cr>

" go to last buffer
nnoremap <leader>bb :b#<cr>

" open up split below
command! -complete=file -nargs=* Bsp rightbelow split +edit <args>

" quick-fix window always spans windows at bottom
" https://stackoverflow.com/a/47077341/2295034
au FileType qf wincmd J
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" OpenUI5 stuff
function! AssociationMapping()
  normal Isap.ui.getCore().byId(get
  normal l~A());
  normal 2F(l
  startinsert
endfunction
nnoremap cass :call AssociationMapping()<cr>

function! OpenUI5Search()
  normal /\vprototype\.(init|On(Before|After)Rendering|exit)+\c
endfunction
nnoremap g] :silent! call OpenUI5Search()<cr>
""""""""""""""""""""""""""""""""""""""""""


" auto-source .vim files when leaving buffer window
augroup filetype_html
  autocmd!
  autocmd WinLeave *.vim :call SourceCurrentBuffer()
augroup END


""""""""""""""""""""""""""""""""""""""""""
" scratch
"
" run command after saving
" augroup scratch
"     autocmd!
"     autocmd BufWritePost * echo "hi"
" augroup END
"
