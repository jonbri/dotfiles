set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set makeprg=eslint\ --format\ compact\ %

let &errorformat =
    \ '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
