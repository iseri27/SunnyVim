"SECTION: Help
let g:leader_key_help = 'h'
call utils#AddKeyGroup([g:leader_key_help], '*Help')
call utils#AddKey(['nnore'], [g:leader_key_help, 'h'], ':help<Space>', 'Help Command')

" vim: nowrap:
