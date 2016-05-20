" Improved n/N - center line after page scroll
function! s:nextzz(cmd)
    let topline  = line('w0')
    let v:errmsg = ""
    execute "silent! normal! " . a:cmd
    if v:errmsg =~ 'E38[45]:.*'
        echohl Error | unsilent echom v:errmsg | echohl None
        let v:errmsg = ""
        return
    endif
    if topline != line('w0')
        normal! zz
    endif
endfun

nnoremap <silent> n :call <SID>nextzz('n')<cr>
nnoremap <silent> N :call <SID>nextzz('N')<cr>