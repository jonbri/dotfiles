set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

" openui5 projects use a special .eslintrc
if expand('%:p') =~# "openui"
    set makeprg=eslint\ --format\ compact\ --no-eslintrc\ --config\ /home/jonbri/.eslintrc\ %
else
    set makeprg=eslint\ --format\ compact\ %
endif

let &errorformat =
    \ '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
