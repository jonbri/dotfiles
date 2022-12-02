function! PrintCommitHeaderPrefix(prefix)
  " start out at very top-left of file
  normal gg0

  " insert text
  normal i# [type-enum]
  normal o#   feat, fix, chore, docs,
  normal o#   perf, refactor, build, ci,
  normal o#   style, revert, release, test
  normal o#

  " go back to the very top-left of the file
  normal gg0

  " insert empty line below header line
  normal O
  normal O

  " go back to top-left
  normal gg0

  " write first line
  execute "normal ifeat: lowerCase (".a:prefix."-8521)"

  " go back to top-left
  normal gg0
endfunction

nnoremap <leader>nc :call PrintCommitHeaderPrefix('NOVACOMMONS')<CR>
nnoremap <leader>hc :call PrintCommitHeaderPrefix('HTMLCOMMONS')<CR>
