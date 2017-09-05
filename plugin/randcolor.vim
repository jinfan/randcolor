if exists('loaded_randcolor') || &cp
    finish
endif
let loaded_randcolor = 0.1.0
let s:keepcpo           = &cpo
set cpo&vim

command! -nargs=0 RandColorScheme call randcolor#RandColorScheme()

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
