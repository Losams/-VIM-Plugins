
function! CheckSameTerm()
    let currentmode = mode()
    " Check for (any) visual mode
    if currentmode ==? 'v'
        let g:flatCheckSameTerm = 1
        normal! "cygv
        exec printf('match IncSearch /\V%s/', substitute(escape(@", '/\'), '\n', '\\n', 'g'))
    else
        match none
    endif
endfunction

function! ResetCheckSameTerm()
    if g:flatCheckSameTerm == 1
        match none
    endif
endfunction

let g:flatCheckSameTerm = 0

au! CursorMoved * call CheckSameTerm()
au! CursorHold * call ResetCheckSameTerm()
