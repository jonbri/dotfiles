set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set makeprg=eslint\ --format\ compact\ --no-eslintrc\ --config\ /home/jonbri/.eslintrc\ %
let &errorformat =
    \ '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
