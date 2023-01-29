" LATEX:
autocmd FileType tex setlocal wrap
call utils#AddKeyForLang('tex', ['n'], ['l'], '<Plug>(vimtex-compile)', 'Compile')
call utils#AddKeyForLang('tex', ['n'], ['v'], '<Plug>(vimtex-view)', 'View')
call utils#AddKeyForLang('tex', ['n'], ['k'], '<Plug>(vimtex-stop)', 'Stop')
call utils#AddKeyForLang('tex', ['n'], ['K'], '<Plug>(vimtex-stop-all)', 'Stop All')
call utils#AddKeyForLang('tex', ['n'], ['s'], '<Plug>(vimtex-status)', 'Status')
call utils#AddKeyForLang('tex', ['n'], ['S'], '<Plug>(vimtex-status-all)', 'Status All')
call utils#AddKeyForLang('tex', ['n'], ['c'], '<Plug>(vimtex-clean)', 'Clean')
call utils#AddKeyForLang('tex', ['n'], ['C'], '<Plug>(vimtex-clean-all)', 'Clean All')
call utils#AddKeyForLang('tex', ['n'], ['t'], ':VimtexTocToggle <CR>', 'TOC')
call utils#AddKeyForLang('tex', ['n'], ['e'], '<Plug>(vimtex-errors)', 'Errors')

" vim: nowrap
