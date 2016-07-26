function NERDTreeSearchNode()
    let curNodePath = g:NERDTreeFileNode.GetSelected().path.str()
    let search = input('search for : ')
    exec 'vimgrep /' . search . '/gj ' . curNodePath . '/**/*'
    exec 'copen'
endfunction

map <silent> <C-f> :call NERDTreeSearchNode()<CR>