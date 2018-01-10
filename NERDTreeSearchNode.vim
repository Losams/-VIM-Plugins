function NERDTreeSearchNode()

    let curNodePath = g:NERDTreeFileNode

    if exists("b:NERDTreeType")
        let curNodePath = g:NERDTreeFileNode.GetSelected().path.str()
        let search = input('search for : ')
        "exec 'noautocmd vimgrep /' . search . '/gj ' . curNodePath . '/**/*'
        "exec 'copen'
        exec 'CtrlSF -I -C 1 ' . search . ' ' . curNodePath
    else
        exec 'CtrlSFOpen'
    endif
endfunction

map <silent> <C-f> :call NERDTreeSearchNode()<CR>
