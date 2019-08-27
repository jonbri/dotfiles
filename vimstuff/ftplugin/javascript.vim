set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" openui5 projects use a special .eslintrc
if expand('%:p') =~# "openui"
    set makeprg=eslint\ --format\ compact\ --no-eslintrc\ --config\ /home/jonbri/.eslintrc_openui5\ %
else
    set makeprg=eslint\ --format\ compact\ %
endif

let &errorformat =
    \ '%E%f: line %l\, col %c\, Error - %m,' .
    \ '%W%f: line %l\, col %c\, Warning - %m'
