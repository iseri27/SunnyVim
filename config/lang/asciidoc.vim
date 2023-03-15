autocmd FileType asciidoc setlocal wrap
call utils#AddKeyForLang('asciidoc', ['n'], ['l'], ':AdocPdfLiveStart <CR>', 'Start pdf live'   )
call utils#AddKeyForLang('asciidoc', ['n'], ['v'], ':AdocPdfLiveOpen  <CR>', 'Open pdf preview' )
call utils#AddKeyForLang('asciidoc', ['n'], ['k'], ':AdocPdfLiveStop  <CR>', 'Stop pdf live'    )
