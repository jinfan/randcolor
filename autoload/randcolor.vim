function! s:Randnum(max) abort
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction

" randomize my color scheme based on what installed.
function!  randcolor#RandColorScheme()
    " Returns the list of available color schemes
    let colors= uniq(sort(map(
                \  globpath(&runtimepath, "colors/*.vim", 0, 1),  
                \  'fnamemodify(v:val, ":t:r")'
                \)))

    let selcolor = colors[s:Randnum(len(colors))]
    try
        exec 'colorscheme '.selcolor
        redraw
        echo 'colorscheme: '.selcolor
    catch
    endtry
endfunction)

