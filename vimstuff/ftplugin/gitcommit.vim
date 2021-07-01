function! PrintCommitHeaderPrefix(prefix)
  " start out at very top-left of file
  normal gg0

  " insert empty line below header line
  normal o

  " go back to top-left
  normal gg0

  " write first line
  execute "normal ifeat: foo (".a:prefix."-)"

  " put user in insert mode so they can start typing the issue number
  startinsert
endfunction

nnoremap <leader>nc :call PrintCommitHeaderPrefix('NOVACOMMONS')<CR>
nnoremap <leader>hc :call PrintCommitHeaderPrefix('HTMLCOMMONS')<CR>
