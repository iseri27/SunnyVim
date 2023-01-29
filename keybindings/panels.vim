"SECTION: User Custom
let g:leader_key_custom = 'u'
call utils#AddKeyGroup([g:leader_key_custom], '*Panels')

"SECTION: panels
call utils#AddKey(['nnore'], [g:leader_key_custom, 'f'], ':CocCommand explorer<CR>', 'File Tree')
call utils#AddKey(['nnore'], [g:leader_key_custom, 't'], ':TagbarToggle <CR>', 'Tagbar')
call utils#AddKey(['nnore'], [g:leader_key_custom, 'u'], ':MundoToggle <CR>', 'History')
