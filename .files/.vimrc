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
" configure vim fast
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>egv :vsplit $MYGVIMRC<cr>
nnoremap <leader>sgv :source $MYGVIMRC<cr>

nnoremap <leader>ecv :vsplit $HOME/config/dotfiles/.vimrc<cr>
nnoremap <leader>ecgv :vsplit $HOME/config/dotfiles/.gvimrc<cr>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" venerable shortcuts
nnoremap gb :ls<CR>:b<Space>
nnoremap <leader>bo :BufOnly<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" syntastic options
let g:syntastic_enable_css_checker = 1
let g:syntastic_css_checkers = ['csslint']

let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" whole-file yank/put operations
nnoremap <leader>yf :%yank f<CR>
nnoremap <leader>pf gg"_dG"fP:w<CR>
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
" search matching
function! GotoFirstMatch()
    call inputsave()
    let userInput = input('')
    execute "keepjumps normal! gg/".userInput."/\<CR>"
endfunction
nnoremap <leader>/f :call GotoFirstMatch()<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" system clipboard copy/paste
vnoremap <leader>sy "+y
nnoremap <leader>sp :put+<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" Fugitive shortcuts
noremap <leader>gs :Gstatus<CR>
noremap <leader>gw :Gwrite<CR>
noremap <leader>gr :Gread<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>ge :Gedit<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gc :Gcommit<CR>
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
" Grep helpers
nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<CR>:copen<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" source current buffer
function! SourceCurrentBuffer()
    source %
    echo "sourced"
endfunction

nnoremap <leader>s :call SourceCurrentBuffer()<CR>
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" make
nnoremap <leader>m :Make<CR>
nnoremap <leader>M :cclose<CR>
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
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" scratch
"
" run command after saving
" augroup scratch
"     autocmd!
"     autocmd BufWritePost * echo "hi"
" augroup END
"
