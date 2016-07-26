# VIM Plugins

This repository is here to keep trap of my `.vim/plugins/`, witch I create or found.

## nextzz.vim

This one launch a `zz` command in normal mode when you search next or previous term with `n` or `N` if the corresponding line is not currently visible (so you don't have to scroll anymore)

Very usefull.

## NERDTreeSearchNode.vim

This plugin I created allow you to search on selected node on NERDTree.

You have to be on the choosen folder (on the nerdtree panel), hit `<C-f>`, an input box 
will appear to ask you what you want to search on that node (folder && subfolder). 

This search use vimgrep in /gj on the node/\*\*/\*, then open the search buffer for you. 
